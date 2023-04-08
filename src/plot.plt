set term pdfcairo size 4in, 2.5in enhanced
set xlabel "Time (epoch)"
set ylabel "Radii"
set format x "10^{%L}"
set output "29.pdf"
set logscale
a = 1.0
b = 2.0
l(x) = a*x**b
fit [10:] l(x) "../img/analyze/29/data.dat" via a, b
plot "../img/analyze/29/data.dat" w p title "29", l(x) title sprintf("x^{%.3f}", b)