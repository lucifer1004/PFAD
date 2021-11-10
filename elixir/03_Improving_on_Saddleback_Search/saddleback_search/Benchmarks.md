
# Benchmark

This benchmark compares 4 different implementations of `invert(f, z)` on 5 different `f`s.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">16</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">62.72 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.12.3</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.1.4</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">5 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics




__Input: F0__ 

$f_0(x,y)=2^y(2x+1)-1$

$z=500$

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap; text-align: right">150.06 K</td>
    <td style="white-space: nowrap; text-align: right">6.66 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;158.24%</td>
    <td style="white-space: nowrap; text-align: right">6.24 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">11.97 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">66.65 K</td>
    <td style="white-space: nowrap; text-align: right">15.00 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;42.66%</td>
    <td style="white-space: nowrap; text-align: right">14.62 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">23.26 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">12.88 K</td>
    <td style="white-space: nowrap; text-align: right">77.67 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;12.89%</td>
    <td style="white-space: nowrap; text-align: right">76.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">113.18 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.0607 K</td>
    <td style="white-space: nowrap; text-align: right">16470.32 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;6.35%</td>
    <td style="white-space: nowrap; text-align: right">16222.59 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">22995.89 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap;text-align: right">150.06 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">66.65 K</td>
    <td style="white-space: nowrap; text-align: right">2.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">12.88 K</td>
    <td style="white-space: nowrap; text-align: right">11.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.0607 K</td>
    <td style="white-space: nowrap; text-align: right">2471.59x</td>
  </tr>

</table>




__Input: F1__

$f_1(x,y)=x2^x+y2^y+2x+y$

$z=500$

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">290.76 K</td>
    <td style="white-space: nowrap; text-align: right">3.44 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;437.10%</td>
    <td style="white-space: nowrap; text-align: right">3.21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.68 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap; text-align: right">223.94 K</td>
    <td style="white-space: nowrap; text-align: right">4.47 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;281.66%</td>
    <td style="white-space: nowrap; text-align: right">4.11 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">7.66 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">10.64 K</td>
    <td style="white-space: nowrap; text-align: right">93.96 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;12.46%</td>
    <td style="white-space: nowrap; text-align: right">91.29 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">145.19 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.0315 K</td>
    <td style="white-space: nowrap; text-align: right">31736.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4.82%</td>
    <td style="white-space: nowrap; text-align: right">31411.97 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">42287.31 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap;text-align: right">290.76 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap; text-align: right">223.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">10.64 K</td>
    <td style="white-space: nowrap; text-align: right">27.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.0315 K</td>
    <td style="white-space: nowrap; text-align: right">9227.61x</td>
  </tr>

</table>




__Input: F2__

$f_2(x,y)=3x+27y+y^2$

$z=500$

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap; text-align: right">158.38 K</td>
    <td style="white-space: nowrap; text-align: right">6.31 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;191.83%</td>
    <td style="white-space: nowrap; text-align: right">5.84 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">12.89 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">142.70 K</td>
    <td style="white-space: nowrap; text-align: right">7.01 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;139.67%</td>
    <td style="white-space: nowrap; text-align: right">6.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">10.78 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">42.71 K</td>
    <td style="white-space: nowrap; text-align: right">23.42 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;26.26%</td>
    <td style="white-space: nowrap; text-align: right">22.89 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">43.68 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">4514.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;4.16%</td>
    <td style="white-space: nowrap; text-align: right">4452.06 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5526.04 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap;text-align: right">158.38 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">142.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">42.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">715.08x</td>
  </tr>

</table>




__Input: F3__

$f_3(x,y)=x^2+y^2+x+y$

$z=500$

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">392.56 K</td>
    <td style="white-space: nowrap; text-align: right">2.55 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;487.89%</td>
    <td style="white-space: nowrap; text-align: right">2.35 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.06 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap; text-align: right">201.55 K</td>
    <td style="white-space: nowrap; text-align: right">4.96 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;283.47%</td>
    <td style="white-space: nowrap; text-align: right">4.56 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">8.18 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">53.49 K</td>
    <td style="white-space: nowrap; text-align: right">18.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;31.48%</td>
    <td style="white-space: nowrap; text-align: right">18.03 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">33.98 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">4387.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;3.95%</td>
    <td style="white-space: nowrap; text-align: right">4352.14 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5322.95 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap;text-align: right">392.56 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap; text-align: right">201.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">53.49 K</td>
    <td style="white-space: nowrap; text-align: right">7.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">1722.45x</td>
  </tr>

</table>




__Input: F4__

$f_4(x,y)=x+2^y+y-1$

$z=500$

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap; text-align: right">135.33 K</td>
    <td style="white-space: nowrap; text-align: right">7.39 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;166.94%</td>
    <td style="white-space: nowrap; text-align: right">7.00 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">12.61 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">33.52 K</td>
    <td style="white-space: nowrap; text-align: right">29.83 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;24.29%</td>
    <td style="white-space: nowrap; text-align: right">28.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">49.26 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">9.98 K</td>
    <td style="white-space: nowrap; text-align: right">100.21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;13.62%</td>
    <td style="white-space: nowrap; text-align: right">96.97 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">151.21 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.0593 K</td>
    <td style="white-space: nowrap; text-align: right">16861.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2.56%</td>
    <td style="white-space: nowrap; text-align: right">16755.62 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">18857.40 &micro;s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Mary's row/column binary search</td>
    <td style="white-space: nowrap;text-align: right">135.33 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Theo's binary search</td>
    <td style="white-space: nowrap; text-align: right">33.52 K</td>
    <td style="white-space: nowrap; text-align: right">4.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Anne's saddleback search</td>
    <td style="white-space: nowrap; text-align: right">9.98 K</td>
    <td style="white-space: nowrap; text-align: right">13.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Jack's brute force</td>
    <td style="white-space: nowrap; text-align: right">0.0593 K</td>
    <td style="white-space: nowrap; text-align: right">2281.89x</td>
  </tr>

</table>



