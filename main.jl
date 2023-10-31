using Random
using Printf
include("print.jl")
include("key.jl")
include("func.jl")
include("code.jl")
include("crypt.jl")
include("demo.jl")

# alph_letters = "_ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!"
# alph_numbers = "1234567890"
alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
n = length(alph)
r = 20