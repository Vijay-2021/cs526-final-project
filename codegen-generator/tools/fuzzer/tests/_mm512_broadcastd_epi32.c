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
__m128i a = _mm_set_epi32((int)0x0f0e0d0c,(int)0x0b0a0908,(int)0x07060504,(int)0x03020100);
  __m512i ret = _mm512_broadcastd_epi32(a);
  hex_out(&ret, 64);
  return 0;
}