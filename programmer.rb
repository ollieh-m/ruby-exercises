$nesting_depth = 0
$space = ' '

def log description, &block

	puts $space*$nesting_depth + 'Here comes the ' + description + ' :'

	$nesting_depth = $nesting_depth + 1

	blockReturn = block.call

	$nesting_depth = $nesting_depth - 1

	puts $space*$nesting_depth + 'That is the ' + description + ' finished. It returned: ' + blockReturn.to_s

end

log 'outer block' do
	
	log 'little block' do

		log 'another block' do

		4 < 5

		end

	4 > 5

	end

5

end