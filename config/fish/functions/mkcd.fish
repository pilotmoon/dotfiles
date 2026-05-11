function mkcd --wraps='mkdir -p  && cd '
    mkdir -p -- $argv[1]
    and cd -- $argv[1]
end
