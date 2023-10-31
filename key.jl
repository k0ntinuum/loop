function randomkey(n) Random.randperm(n) end

# function guard(x :: Int64, p :: Int64) :: Int64
#     while x > n
#         x -= n
#     end
#     x
# end

function spin(q,r)
    f = copy(q)
    for i in 1:r
        for j in 1:n
            p = f[i]
            g = circshift(f,p)
            f = composition(g,f)
        end
    end
    f
end



