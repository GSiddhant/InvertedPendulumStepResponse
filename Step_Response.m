mc = 0.050
L = 0.1
g = 9.8
mp = 0.025

s = tf('s')
invpen = 1/((mc*L*s^2) - (mc*g + mp*g))
step(invpen)

%pidtool(invpen, 'p')

kp = 19.2531
ki = 144.024561
kd = 0.6434366

fb = (kd*s^2 + kp*s + ki)/((mc*L+kd)*s^2 + kp*s + (ki - g*(mc + mp)))
step(fb)