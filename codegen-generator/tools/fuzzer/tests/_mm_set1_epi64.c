#include <immintrin.h>
#include <stdio.h>
#include <stdint.h>


void hex_out(const uint8_t * buf, ssize_t sz) {
    for (ssize_t i = sz - 1; i >= 0; --i) {
        printf("%02x", buf[i]);
    }
    printf("\n");
}


int main() {
__m64 a = _mm_set_pi8(0x07,0x06,0x05,0x04,0x03,0x02,0x01,0x00);
  __m128i ret = _mm_set1_epi64(a);
  hex_out(&ret, 16);
  return 0;
}