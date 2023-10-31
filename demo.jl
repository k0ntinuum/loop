function vecfromstring(s,alph)
    n = length(s)
    v = zeros(Int64,n)
    for i in 1:n
        v[i] = findfirst(isequal(s[i]),alph)
    end
    v
end

function nth_word(n :: Int64)
    s = string(n, base = length(alph))
    a =  zeros(Int64, length(s))
    for i in eachindex(a)
        a[i] = parse(Int64, s[i:i], base = length(alph)) + 1
    end
    a
end

function rgb(r,g,b) Base.print("\u1b[38;2;$(r);$(g);$(b)m") end
function demo()
    f = randomkey(n)
    rgb(255,255,255)
    @printf "f = "
    printvec(f)
    @printf "\n"
    @printf "r = %d" r
    @printf "\n\n"
    for i in 50000000:50000020
        p = Random.randperm(n)
        p = nth_word(i)
        #p = Random.randperm(n)
        c = encrypt(p,f,r)
        d = decrypt(c,f,r)
        if p != d @printf "ERROR\n\n" end
        rgb(255,255,255)
        @printf "f( "
        rgb(255,0,0)
        printvec(p)
        rgb(255,255,255)
        @printf " ) = "
        rgb(255,255,0)
        
        printvec(c)
        rgb(255,255,255)
        @printf "\n"
    end

end

