# Copy an ip address from a domain
# Usage cip domain.com
function cip() {
	ip=$(resolveip -s $1)
	echo $ip | pbcopy
	echo $ip
}

function find_cd() {
    cd "$(find . -type d | peco)"
}
alias fc="find_cd"

alias rs='bundle exec rails s'
alias rp='bundle exec rspec'
alias pd='bundle exec cap production deploy --trace'
