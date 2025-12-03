function master
    if test "(git symbolic-ref --short HEAD)" = master
        return 0
    else
        return 1
    end
end