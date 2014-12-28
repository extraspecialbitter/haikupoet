#!/usr/local/bin/ksh

rm -f Slide*.html

N=1
LAST=49

while [ ${N} -le ${LAST} ]
do
  OUT="Slide${N}.html"
  echo "<head>" > ${OUT}
  echo "<body>" >> ${OUT}
  echo "<center>" >> ${OUT}
  NEXT=`expr ${N} + 1`
  echo "<a href=Slide${NEXT}.html><img src=Slide${N}.jpg border=0></A>" >> ${OUT}
  echo "</center>" >> ${OUT}
  echo "</body>" >> ${OUT}
  echo "</head>" >> ${OUT}
  N=${NEXT}
done
