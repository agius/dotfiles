# needed to override bundled_kitchen (bundler plugin)
if [[ -f /usr/local/bin/chef ]] ; then
  alias chef="/usr/local/bin/chef"
  alias kitchen="/usr/local/bin/kitchen"
  alias knife="/usr/local/bin/knife"
  alias berks="/usr/local/bin/berks"
  alias ksn="knife search node $1 -a 'ec2.public_hostname'"
fi
