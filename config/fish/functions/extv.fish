function extv
    if not clean
        echo "It looks like the source repo is not clean."
        return
    end

    if tagged
        echo "It looks like the source repo is already tagged."
        return
    end

    set newtag v( git describe --tags --abbrev=0 | awk -F'v' '{print $2+1}' )

    echo "new tag $newtag"
    git tag -a -m 'incremented by script' $newtag
    git push --tags
end