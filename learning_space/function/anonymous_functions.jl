using Pkg


Pkg.add("QuadGK")

using QuadGK

#無名関数(anonimous function)
f(x,y,z) = (x^2 + 2y)*z

# ->次と等価
function f(x,y,z)
  return (x^2 + 2y)*z
end

quadgk(x->f(x,42,4), 3, 4)