#HALIDE_DIR ?= ../../../distrib

HALIDE_DISTRIB ?= /home/arnoor2/Racket/TensorSynth/Rosette-experiments/frontends/halide/distrib/
HALIDE_DIR = $(HALIDE_DISTRIB)
LLVM_ROOT ?= $(LLVM_DIS_ROOT)

HEXAGON_SIM ?= /shared/akashk4/Hexagon_SDK/3.5.3/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-sim
HEXAGON_CLANG ?= /shared/akashk4/Hexagon_SDK/3.5.3/tools/HEXAGON_Tools/8.3.07/Tools/bin/hexagon-clang++

benchmarks = gaussian3x3 \
			 gaussian5x5 \
			 gaussian7x7 \
			 dilate3x3 \
			 dilate5x5 \
			 dilate7x7 \
			 median3x3 \
			 sobel3x3 \
			 sobel5x5 \
			 blur3x3 \
			 blur5x5 \
			 blur7x7 \
			 matmul \
			 matmul_hvx \
			 matmul_hvx_8bit \
			 matmul_hvx_reduce_4\
			 depthwise_conv \
			 add \
			 mul \
			 l2norm \
			 max_pool \
			 average_pool \
			 conv_nn \
			 conv3x3a16 \
			 conv3x3a32 \
			 simple \
			 softmax \
			 matmul_256_32bit_bias_add\
			 matmul_256_32bit_bias_add_add\
			 matmul_256_32bit_bias_add_relu\
			 matmul_256_32bit_bias_add_gelu\
			 batched_matmul_256_32bit\
			 max_pool_add\
			 average_pool_add\
			 matmul_bias_relu_matmul\
			 matmul_bias_gelu_matmul


bin_dirs = $(addsuffix /bin,$(benchmarks))
out_dirs = $(addsuffix /out,$(benchmarks))
prof_dirs = $(addsuffix /profile,$(benchmarks))


ENABLE_HYDRIDE ?= 1
EXPR_DEPTH ?=2
INT_BW ?= 16
STARTING_HASH ?= "empty_hash" 


hannk = hannk/common_halide.cpp

sim=true

.PHONY: clean all $(benchmarks)

all: $(benchmarks)

$(benchmarks): %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell $(LLVM_CONFIG) --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib; export HYDRIDE_BENCHMARK=$@_hvx_depth$(EXPR_DEPTH); HL_ENABLE_HYDRIDE=$(ENABLE_HYDRIDE) HL_EXPR_DEPTH=$(EXPR_DEPTH) HYDRIDE_TARGET=hvx   HL_SYNTH_BW=$(INT_BW) ./$@/bin/$@_generator  \
	    -t 0 \
		-o $@/bin \
		-g $@ \
		-e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128-hvx_v66

ifeq ($(sim),true)
	$(HEXAGON_CLANG) \
		-D$@ \
		--std=c++17 -mhvx -mv66 -mhvx-length=128B \
		-I $(HALIDE_DIR)/include -I ./$@/bin \
		test/run.cpp \
		test/stubs.cpp \
		$@/bin/$@_hvx128.a \
		$(HALIDE_DIR)/../src/runtime/hexagon_remote/bin/v65/libsim_qurt.a -lhexagon \
		-o $@/bin/$@_run.out

	$(HEXAGON_SIM) -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 $@/bin/$@_run.out -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin

	rm -f pmu_statsfile.txt stats_dump.iss.0
endif

fully_connected: %: %/bin %/out %/profile
	g++ --std=c++17 -fno-rtti -O3 -DLOG2VLEN=7 \
		-I $(HALIDE_DIR)/include -I $(HALIDE_DIR)/tools \
		-g $@/src/$@_generator.cpp $(HALIDE_DIR)/tools/GenGen.cpp \
		$(hannk) \
		-o $@/bin/$@_generator \
		-L $(HALIDE_DIR)/lib -lHalide $(shell $(LLVM_CONFIG) --system-libs --link-static)

	export LD_LIBRARY_PATH=$(HALIDE_DIR)/lib;  export HYDRIDE_BENCHMARK=$@_hvx_depth$(EXPR_DEPTH); HL_ENABLE_HYDRIDE=$(ENABLE_HYDRIDE) HL_EXPR_DEPTH=$(EXPR_DEPTH) HYDRIDE_TARGET=hvx   HL_SYNTH_BW=$(INT_BW) ./$@/bin/$@_generator \
	    -t 0 \
		-o $@/bin \
		-g $@ output.type=uint8 \
		-e static_library,stmt,h,llvm_assembly,assembly \
		-f $@_hvx128 target=hexagon-32-noos-no_bounds_query-no_asserts-hvx_128-hvx_v66

ifeq ($(sim),true)	
	$(HEXAGON_CLANG) \
		-D$@  \
		--std=c++17 -mhvx -mv66 -mhvx-length=128B \
		-I $(HALIDE_DIR)/include -I ./$@/bin \
		test/run.cpp \
		test/stubs.cpp \
		$@/bin/$@_hvx128.a \
		$(HALIDE_DIR)/../src/runtime/hexagon_remote/bin/v65/libsim_qurt.a -lhexagon \
		-o $@/bin/$@_run.out

	$(HEXAGON_SIM) -mv66 --memfill 0x0 --simulated_returnval --nullptr=2 $@/bin/$@_run.out -- 1920 1080 ../test_vectors/football1920x1080.bin $@/out/out.bin
	
	rm -f pmu_statsfile.txt stats_dump.iss.0
endif

$(prof_dirs) $(out_dirs) $(bin_dirs): %:
	mkdir $@

fully_connected/profile fully_connected/out fully_connected/bin: %:
	mkdir $@

clean:
	rm -rf $(bin_dirs) $(out_dirs) $(prof_dirs) pmu_statsfile.txt stats_dump.iss.0
	rm halide_expr*
	rm -rf /tmp/hydride_exprs.rkt
	rm -rf /tmp/hydride.node.*
	rm -rf /tmp/base_*

