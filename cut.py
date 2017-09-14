import math
import matplotlib
# matplotlib.use('gtkagg')
import pylab
import numpy

def maxangle(a, t):
    return math.atan2(a,2*t)

def findn(L, angle, a, T):
    eff_L=L-T*math.tan(angle)
    return eff_L/(2*(a-T*math.tan(angle)))

def findn_kerf(L, angle, a, T, ekerf):
    eff_L=L-T*math.tan(angle)+ekerf
    return eff_L/(2*(ekerf+a-T*math.tan(angle)))


A=1.077-1/16.0

T=0.64
L=3.5

Kerf=0.07

alpha = maxangle(A,T)

alpha=37.0/180*math.pi

eff_kerf = Kerf/math.cos(alpha)

B = A-2*T*math.tan(alpha)

N = findn(L,alpha,A,T)

Nk = findn_kerf(L,alpha,A,T,eff_kerf)

angles = numpy.linspace(0,maxangle(A,T), num=100)
Nplot = numpy.zeros(len(angles))
Bs = numpy.zeros(len(angles))

for i in range(len(Nplot)):
    eff_kerf = Kerf/math.cos(alpha)
    Nplot[i] = findn_kerf(L,angles[i],A,T,eff_kerf)
    Bs[i] = A-2*T*math.tan(angles[i])



pylab.plot(angles, Nplot)
pylab.plot(angles, Bs)

pylab.show()
