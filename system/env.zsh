if which slap &>/dev/null; then
  export EDITOR='slap'
elif which subl &>/dev/null; then
  export EDITOR="subl"
elif which mate &>/dev/null; then
  export EDITOR="mate"
elif which vim &>/dev/null; then
  export EDITOR="vim"
elif which vi &>/dev/null; then
  export EDITOR="vi"
elif which emacs &>/dev/null; then
  export EDITOR="emacs"
elif which nano &>/dev/null; then
  export EDITOR="nano"
fi

# 
# 

if which brew &>/dev/null && brew info ec2-api-tools ; then
  local ec2_version="${brew info ec2-api-tools | tail +1 | head -1}"
  export EC2_HOME="/usr/local/Cellar/ec2-api-tools/${ec2_version##*:}/libexec"
  
  if [[ -d "/usr/libexec/java_home" ]] ; then
    export JAVA_HOME="/usr/libexec/java_home"
  fi

  if [[ -n "$(/bin/ls "$HOME"/.ec2/pk-*.pem)" ]] ; then
    export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
    export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
  fi
fi