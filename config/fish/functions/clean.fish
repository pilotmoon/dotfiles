function clean
    if test -z "(git status --porcelain)"
        return 0
    else
        return 1
    end
end