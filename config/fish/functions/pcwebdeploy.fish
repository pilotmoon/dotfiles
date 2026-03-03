function pcwebdeploy --wraps='bun run docs:build && SSH_USER=deploy SSH_HOST=lemonade-deploy ./deploy' --description 'alias pcwebdeploy bun run docs:build && SSH_USER=deploy SSH_HOST=lemonade-deploy ./deploy'
    bun run docs:build && SSH_USER=deploy SSH_HOST=lemonade-deploy ./deploy $argv
end
