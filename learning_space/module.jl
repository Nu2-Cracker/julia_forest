using Pkg

#まだないパッケージを使おうとするとエラー
# using SpecialFunctions
# LoadError: ArgumentError: Package SpecialFunctions not found in current path:
# - Run `import Pkg; Pkg.add("SpecialFunctions")` to install the SpecialFunctions package.

Pkg.add("SpecialFunctions") #実行時にインストールできる
using SpecialFunctions: gamma, sinint

println(gamma(3))#ガンマ関数 https://mathtrain.jp/gamma
println(sinint(5)) #Sine integral https://en.wikipedia.org/wiki/Trigonometric_integral