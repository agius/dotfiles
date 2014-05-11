require 'shellwords'
SUBLIME_PATHS = ["/usr/local/bin/subl",
                 "#{ENV['HOME']}/Applications/Sublime Text\ 2.app/Contents/SharedSupport/bin/subl",
                 "#{ENV['HOME']}/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl",
                 "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl",
                 "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"]

subl = SUBLIME_PATHS.find{|p| File.exists?(p) }

dir = Dir.getwd
file = ARGV.first
file ||= Dir.glob('*.sublime-project').first
file ||= Dir.glob('*.sublime-workspace').first
file ||= '.'

system([subl, file].shelljoin)
