require "yaml"
require 'octokit'

@github = YAML.load(File.open("github.yml"))


# Provide authentication credentials
Octokit.configure do |c|
  c.login    = @github['user']
  c.password = @github['pass']
end

# Fetch the current user
p Octokit.user
