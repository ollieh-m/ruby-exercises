require 'yaml'

object = ['1',1,46,'ABC']

file = 'yamltestfile.txt'

File.open file, 'w' do |f|
	f.write object.to_yaml
end

yaml_string = File.read file
p YAML::load yaml_string