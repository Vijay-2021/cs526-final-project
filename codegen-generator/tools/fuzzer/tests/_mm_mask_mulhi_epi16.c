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
__m128i src = _mm_set_epi16((short)0x0f0e,(short)0x0d0c,(short)0x0b0a,(short)0x0908,(short)0x0706,(short)0x0504,(short)0x0302,(short)0x0100);
__mmask8 k = _cvtu32_mask8(0x10);
__m128i a = _mm_set_epi16((short)0x201f,(short)0x1e1d,(short)0x1c1b,(short)0x1a19,(short)0x1817,(short)0x1615,(short)0x1413,(short)0x1211);
__m128i b = _mm_set_epi16((short)0x302f,(short)0x2e2d,(short)0x2c2b,(short)0x2a29,(short)0x2827,(short)0x2625,(short)0x2423,(short)0x2221);
  __m128i ret = _mm_mask_mulhi_epi16(src, k, a, b);
  hex_out(&ret, 16);
  return 0;
}