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
__mmask16 k = _cvtu32_mask16(0x0100);
__m512i src = _mm512_set_epi32((int)0x41403f3e,(int)0x3d3c3b3a,(int)0x39383736,(int)0x35343332,(int)0x31302f2e,(int)0x2d2c2b2a,(int)0x29282726,(int)0x25242322,(int)0x21201f1e,(int)0x1d1c1b1a,(int)0x19181716,(int)0x15141312,(int)0x11100f0e,(int)0x0d0c0b0a,(int)0x09080706,(int)0x05040302);
__m512i a = _mm512_set_epi16((short)0x8180,(short)0x7f7e,(short)0x7d7c,(short)0x7b7a,(short)0x7978,(short)0x7776,(short)0x7574,(short)0x7372,(short)0x7170,(short)0x6f6e,(short)0x6d6c,(short)0x6b6a,(short)0x6968,(short)0x6766,(short)0x6564,(short)0x6362,(short)0x6160,(short)0x5f5e,(short)0x5d5c,(short)0x5b5a,(short)0x5958,(short)0x5756,(short)0x5554,(short)0x5352,(short)0x5150,(short)0x4f4e,(short)0x4d4c,(short)0x4b4a,(short)0x4948,(short)0x4746,(short)0x4544,(short)0x4342);
__m512i b = _mm512_set_epi16((short)0xc1c0,(short)0xbfbe,(short)0xbdbc,(short)0xbbba,(short)0xb9b8,(short)0xb7b6,(short)0xb5b4,(short)0xb3b2,(short)0xb1b0,(short)0xafae,(short)0xadac,(short)0xabaa,(short)0xa9a8,(short)0xa7a6,(short)0xa5a4,(short)0xa3a2,(short)0xa1a0,(short)0x9f9e,(short)0x9d9c,(short)0x9b9a,(short)0x9998,(short)0x9796,(short)0x9594,(short)0x9392,(short)0x9190,(short)0x8f8e,(short)0x8d8c,(short)0x8b8a,(short)0x8988,(short)0x8786,(short)0x8584,(short)0x8382);
  __m512i ret = _mm512_maskz_dpwssd_epi32(k, src, a, b);
  hex_out(&ret, 64);
  return 0;
}