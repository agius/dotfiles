alias r='rbenv local 1.8.7-p358'

alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'
alias ss='bundle exec rake sunspot:solr:run'

alias migrate='rake db:migrate db:test:clone'

function prod() {
  cd /var/www/$1/current && RAILS_ENV=production bundle exec rails c
}