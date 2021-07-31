#plugins=(git zsh-wakatime)
source $ZSH/oh-my-zsh.sh
alias bddocker="docker build -t"
alias dockerls="docker container ls -a"
alias dockerstp="docker stop"
alias cmpup="docker-compose up --build -d"
alias startexec="cd ~/ && ./drone-runner-exec"
alias cmpf="docker-compose -f"
alias cmpdown="docker-compose down"
alias clr="clear"
alias krews="kubectl krew"
alias crew="kubectl krew"
alias terraboard="docker run --rm --detach --name terraboard -p 8034:8080 -e AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}" -e AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}"  -e AW$alias nodes="kubectl get nodes"
alias clusterevents="kubectl get events"
alias clusterlogs="kubectl logs"
alias clusterchart="kubectl create -f"
alias clusterapply="kubectl apply -f"
alias nodeslist="kubectl get nodes"
alias podslist="kubectl get pods --all-namespaces"
alias dlogs="docker logs"
alias zshconfig="nano ~/.zshrc"
alias bashconfig="nano ~/.bashrc"
alias vltrls="vultr instance list"
alias tfinit="terraform init -upgrade"
alias tfapply="terraform apply -auto-approve"
alias dronestart="cd ~/drone/temp && drone-runner-exec"
alias tfkill="terraform destroy -auto-approve"
command -v vg >/dev/null 2>&1 && eval "$(vg eval --shell bash)"