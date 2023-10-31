


function printvec(v)
    for i in eachindex(v)
        #@printf "%d " i
        print(alph[v[i]])
    end
    #@printf "\n"
end