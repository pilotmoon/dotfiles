function gca --wraps='git commit -a' --wraps='git commit -am' --description 'alias gca=git commit -am'
    git commit -am $argv
end
