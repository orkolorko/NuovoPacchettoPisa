using NuovoPacchettoPisa
using Test

@testset "NuovoPacchettoPisa.jl" begin
    @test NuovoPacchettoPisa.T(0.0) == 0.0
    @test NuovoPacchettoPisa.T(1.0) == 0.0
    @test NuovoPacchettoPisa.T(0.5) == 1.0
end
