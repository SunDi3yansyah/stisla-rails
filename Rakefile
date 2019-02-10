# frozen_string_literal: true

task default: "help"

desc "Help"
task :help do
  puts <<HELP
All of these processes are taken by rake, below is the full list:

#{%x[rake -T]}

HELP
end
