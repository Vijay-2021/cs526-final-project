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
__m256i src = _mm256_set_epi64x((__int64_t)0x1f1e1d1c1b1a1918,(__int64_t)0x1716151413121110,(__int64_t)0x0f0e0d0c0b0a0908,(__int64_t)0x0706050403020100);
__mmask8 k = _cvtu32_mask8(0x20);
__m128i a = _mm_set_epi32((int)0x302f2e2d,(int)0x2c2b2a29,(int)0x28272625,(int)0x24232221);
  __m256i ret = _mm256_mask_cvtepu32_epi64(src, k, a);
  hex_out(&ret, 32);
  return 0;
}