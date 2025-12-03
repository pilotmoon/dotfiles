function tagged
    git describe --exact-match --tags (git rev-parse HEAD) >/dev/null 2>&1
    return $status
end