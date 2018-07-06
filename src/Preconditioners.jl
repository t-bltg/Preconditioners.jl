module Preconditioners

using IncompleteSelectedInversion
using AMG

import Base.LinAlg: A_ldiv_B!, \, *, A_mul_B!

abstract type AbstractPreconditioner end

include("incompletecholesky.jl")
include("diagonal.jl")
include("amg.jl")

export  CholeskyPreconditioner, 
        EmptyCholeskyPreconditioner, 
        DiagonalPreconditioner, 
        EmptyDiagonalPreconditioner,
        AMGPreconditioner,
        SmoothedAggregation,
        RugeStuben,
        UpdatePreconditioner!

end # module
