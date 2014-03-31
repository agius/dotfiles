if type subl >/dev/null ; then
  export EDITOR="subl"
elif type mate >/dev/null ; then
  export EDITOR="mate"
elif type vim >/dev/null ; then
  export EDITOR="vim"
elif type vi >/dev/null ; then
  export EDITOR="vi"
elif type emacs>/dev/null ; then
  export EDITOR="emacs"
elif type nano >/dev/null ; then
  export EDITOR="nano"
fi

export JAVA_HOME="$(/usr/libexec/java_home)"
# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.12.0/libexec"