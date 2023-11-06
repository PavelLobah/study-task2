def parabola(x: float) -> float: 
       return  5*x**2 + 3*x + 2

def deriv(f):
    def derivative(x):
        dx = 0.0001
        return (f(x+dx) - f(x)) / dx
    return derivative

line = deriv(parabola)
a = line(0)

print(a) # 3.0004999999988513