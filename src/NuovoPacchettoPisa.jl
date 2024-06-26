module NuovoPacchettoPisa

export T, orbit, standard

@doc raw"""
This function represents the full branch quadratic map
    ``T(x) = 4x(1-x)``
"""
T(x) = 4 * x * (1 - x)

@doc raw"""
    orbit(T, x0, N; transient)
    T: dynamic
    x0: start point 
    N: number iterates
    transient: number of transient iterates
"""
function orbit(T, x0, N; transient = 2 * N)
    out = zeros(typeof(x0), N)
    x = x0
    for _ in 1:transient
        x = T(x)
    end
    for i in 1:N
        out[i] = x
        x = T(x)
    end
    return out
end

"""
    standard map 
    standard(p, θ; K) where K is default at 0.6
"""
function standard(p, θ; K = 0.6)
    p = p + K * sin(1.001 * θ)
    θ = θ + p
    return mod(p, 2 * π), mod(θ, 2 * π)
end

end
