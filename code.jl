function encode(p,q)
    f = copy(q)
    c = Int64[]
    for i in eachindex(p)
        push!(c,f[p[i]])
        g = circshift(f,p[i])
        f = composition(g,f)
    end
    c
end


function demoencode(p,q,F)
    f = copy(q)
    c = Int64[]
    for i in eachindex(p)
        push!(c,f[p[i]])
        g = circshift(f,p[i])
        f = composition(g,f)
        push!(F,f)
    end
    c
end

function decode(c,q)
    f = copy(q)
    p = Int64[]
    for i in eachindex(c)
        h = inverse(f)
        push!(p, h[c[i]])
        g = circshift(f,p[end])
        f = composition(g,f)
    end
    p
end

