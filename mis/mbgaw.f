      SUBROUTINE MBGAW(BOXL,DPHI,WS,PAW,PAF1,PAF2,Q,Q1,Q2,M,KC,KC1,KC2)
C
C     MAIN PLANE BOXES
C     (NEW MSC METHOD USED)
C
      COMPLEX WS,DPHI,Q(1),Q1(1),Q2(1)
      WS  =  (-0.5 * AMIN0(M,2) * BOXL ) * DPHI
      IF( PAW .LT. 0.005 ) GO TO 120
      Q(KC) = PAW * WS
  120 IF( PAF1 .LT. 0.005 ) GO TO 140
      Q1(KC1) = PAF1 * WS
  140 IF( PAF2 .LT. 0.005 ) GO TO 300
      Q2(KC2) = PAF2 * WS
  300 CONTINUE
      RETURN
      END