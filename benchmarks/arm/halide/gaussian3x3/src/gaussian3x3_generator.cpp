#include "Halide.h"

using namespace Halide;

class Gaussian3x3 : public Generator<Gaussian3x3> {
public:
    Input<Buffer<uint8_t>> input{"input", 2};
    Output<Buffer<uint8_t>> output{"output", 2};

    void generate() {
        bounded_input(x, y) = BoundaryConditions::repeat_edge(input)(x, y);
        input_16(x, y) = cast<int16_t>(bounded_input(x, y));

        rows(x, y) = input_16(x, y-1) + 2 * input_16(x, y) + input_16(x, y+1);
        cols(x,y) =  rows(x-1, y) + 2 * rows(x, y) + rows(x+1, y);

        output(x, y)  = cast<uint8_t> ((cols(x, y) + 8) >> 4);
            
        // Schedules for x86
        const int vector_size = 32;
        output
            .tile(x, y, xi, yi, 32, 4, TailStrategy::RoundUp)
            .vectorize(xi, vector_size)
            .unroll(yi);
        rows
            .compute_at(output, y)
            .tile(x, y, x, y, xi, yi, 32, 4, TailStrategy::RoundUp)
            .vectorize(xi, vector_size)
            .unroll(yi)
            .align_storage(x, 32);
        bounded_input
            .compute_at(output, y)
            .align_storage(x, 32)
            .vectorize(x, vector_size, TailStrategy::RoundUp);

        output.print_loop_nest();

    }

    void schedule() {}

private:
    Var x{"x"}, y{"y"}, xi{"xi"}, xii{"xii"}, yi{"yi"}, yii{"yii"};
    Func rows{"rows"}, cols{"cols"}, input_16{"input_16"}, bounded_input{"bounded_input"};
};

HALIDE_REGISTER_GENERATOR(Gaussian3x3, gaussian3x3);
