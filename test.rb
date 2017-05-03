require 'yaml'

def blue(text)
  "\e[1;34m#{text}\e[0m"
end

mods = YAML.load_file(File.expand_path('mods.yml'))

puts
puts blue "Mods Found"
mods.each do |key, value|
  puts "  #{key} (#{blue value.count} key/value pairs)"
end
puts
