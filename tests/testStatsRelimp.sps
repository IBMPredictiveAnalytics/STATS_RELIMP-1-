﻿get file="c:/spss20/samples/english/employee data.sav".

STATS RELIMP DEPENDENT=salary ENTER=salbegin jobtime
MEASURE=LMG FIRST LAST
/OPTIONS SCALE=YES RANKS=YES MISSING=LISTWISE PLOT=YES.


STATS RELIMP DEPENDENT=salary ENTER=salbegin jobtime
MEASURE=LMG.


STATS RELIMP DEPENDENT=salary ENTER=jobcat jobtime minority prevexp salbegin
MEASURE=LMG FIRST LAST 
/OPTIONS SCALE=YES RANKS=YES MISSING=LISTWISE PLOT=YES.

STATS RELIMP DEPENDENT=salary ENTER=salbegin bdate
MEASURE=LMG FIRST LAST
/OPTIONS SCALE=NO RANKS=NO MISSING=LISTWISE PLOT=NO.


STATS RELIMP /HELP.


STATS RELIMP DEPENDENT=salary FORCED=jobcat ENTER=salbegin jobtime gender educ
MEASURE=LMG FIRST LAST BETASQ PRATT
/OPTIONS PAIRWISE=YES SCALE=YES RANKS=YES MISSING=LISTWISE PLOT=YES.

STATS RELIMP DEPENDENT=salary ENTER=salbegin jobtime prevexp
MEASURE=FIRST 
/OPTIONS  SCALE=NO RANKS=NO MISSING=LISTWISE PLOT=NO.
