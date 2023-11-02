function randomkey(n) Random.randperm(n) end


function spin(q,r)
    f = copy(q)
    for i in 1:r
        for j in 1:n
            g = circshift(f,f[j])
            f = composition(g,f)
        end
    end
    f
end



