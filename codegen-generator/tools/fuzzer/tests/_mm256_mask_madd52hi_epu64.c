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
__m256i a = _mm256_set_epi64x((__int64_t)0x1f1e1d1c1b1a1918,(__int64_t)0x1716151413121110,(__int64_t)0x0f0e0d0c0b0a0908,(__int64_t)0x0706050403020100);
__mmask8 k = _cvtu32_mask8(0x20);
__m256i b = _mm256_set_epi64x((__int64_t)0x403f3e3d3c3b3a39,(__int64_t)0x3837363534333231,(__int64_t)0x302f2e2d2c2b2a29,(__int64_t)0x2827262524232221);
__m256i c = _mm256_set_epi64x((__int64_t)0x605f5e5d5c5b5a59,(__int64_t)0x5857565554535251,(__int64_t)0x504f4e4d4c4b4a49,(__int64_t)0x4847464544434241);
  __m256i ret = _mm256_mask_madd52hi_epu64(a, k, b, c);
  hex_out(&ret, 32);
  return 0;
}