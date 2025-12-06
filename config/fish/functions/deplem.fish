function deplem --wraps='SSH_USER=deploy SSH_HOST=lemonade-deploy ./deploy' --description 'alias deplem SSH_USER=deploy SSH_HOST=lemonade-deploy ./deploy'
    SSH_USER=deploy SSH_HOST=lemonade-deploy ./deploy $argv
end
