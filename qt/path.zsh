if [[ -d "/usr/local/opt/qt" ]] ; then
  export LDFLAGS="-L/usr/local/opt/qt/lib"
  export CPPFLAGS="-I/usr/local/opt/qt/include"
fi
