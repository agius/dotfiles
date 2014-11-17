if which vim &>/dev/null; then
  export EDITOR="vim"
elif which subl &>/dev/null; then
  export EDITOR="subl"
elif which slap &>/dev/null; then
  export EDITOR='slap'
elif which emacs &>/dev/null; then
  export EDITOR="emacs"
elif which vi &>/dev/null; then
  export EDITOR="vi"
elif which nano &>/dev/null; then
  export EDITOR="nano"
fi

if [[ -n $RBENV_VERSION ]] ; then
  export RBENV_VERSION=''
fi

if which brew &>/dev/null && brew info ec2-api-tools &>/dev/null ; then
  local ec2_version="$(brew info ec2-api-tools | tail +1 | head -1)"
  export EC2_HOME="/usr/local/Cellar/ec2-api-tools/${ec2_version##* }/libexec"
  
  if [ -d "/usr/libexec/java_home" ] || [ -h "/usr/libexec/java_home" ] ; then
    export JAVA_HOME="/usr/libexec/java_home"
  fi

  if [ -d "$HOME/.ec2" ] || [ -h "$HOME/.ec2" ] ; then
    if [[ $(/bin/ls $HOME/.ec2/) == "pk-*.pem" ]] && [[ $(/bin/ls $HOME/.ec2/) == "cert-*.pem" ]] ; then
      export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
      export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
    fi
  fi
fi