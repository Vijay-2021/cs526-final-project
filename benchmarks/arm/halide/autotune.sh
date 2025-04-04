#!/bin/bash

# Doing the autotuning in bash script because:
# (a) It doesn't seem that make -j parallelizes it anyway
# (b) Don't know exactly what's going on in autotune_loop.sh and so I don't want to run it in parallel

BENCHMARKS="gaussian3x3
			gaussian5x5 \
			dilate3x3 \
			median3x3 \
			sobel3x3 \
			blur3x3 \
			matmul \
			add \
			mul \
			l2norm \
			max_pool \
			average_pool \
			conv_nn \
			fully_connected"

HALIDE_BIN=/home/sb54/halide-12/bin
HALIDE_DISTRIB=/home/sb54/halide-12/distrib
AUTOSCHED_SRC=/home/sb54/halide-12/src/autoschedulers/adams2019

# Remove previous runs
for b in $BENCHMARKS 
do
    rm -rf $b/samples
done

echo "Done deleting"

# Make all
make clean
make -j

BENCHMARK_ROOT=/home/sb54/Hydride/hexagon-benchmarks/rake/benchmarks/hexagon/halide

NUM_BATCHES=100
# Note this: https://github.com/halide/Halide/blob/a8174147251f7b525dbecd1d2c9dc176be94eaad/src/autoschedulers/adams2019/autotune_loop.sh#L59
# So, we don't start over in every batch.
# NOTE(Stefanos): Theoretically, then, there's no difference in running many batches outside of autotune_loop.sh
# or inside. I think it's better to change the original script as less as possible so that's why I'm doing it this way.
# Another question is whether it matters if we interchange the loop below. I think not.
for ((i=0; i < $NUM_BATCHES; i++))
do
  for bench in $BENCHMARKS
  do
    echo "--- ${bench} ---"

		echo ${BENCHMARK_ROOT}/${bench}/samples

		${AUTOSCHED_SRC}/autotune_loop.sh \
			${BENCHMARK_ROOT}/${bench}/bin/${bench}_generator \
			${bench} \
			"" \
			${AUTOSCHED_SRC}/baseline.weights \
			${HALIDE_BIN} \
			${HALIDE_DISTRIB} \
			${BENCHMARK_ROOT}/${bench}/samples
  done
done
