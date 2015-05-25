set :rails_env, "staging"

def env_git_branch
  ENV["GIT_BRANCH"].gsub(/remotes\//,"").gsub(/origin\//,"")
rescue NoMethodError => msg
  raise ArgumentError, "Environment variable 'GIT_BRANCH' was not set\n#{msg}"
end

set(:branch, env_git_branch)
