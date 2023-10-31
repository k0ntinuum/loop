function encode(p,q)
    f = copy(q)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        c[i] = f[p[i]]
        g = circshift(f,p[i])
        f = composition(g,f)
    end
    c
end

function decode(c,q)
    f = copy(q)
    p = zeros(Int64,length(c))
    for i in eachindex(p)
        h = inverse(f)
        p[i] = h[c[i]]
        g = circshift(f,p[i])
        f = composition(g,f)
    end
    p
end

