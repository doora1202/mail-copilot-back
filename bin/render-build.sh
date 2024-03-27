# exit on error
set -o errexit

bundle install
gem update --system
bundle exec rails assets:precompile
bundle exec rails assets:clean