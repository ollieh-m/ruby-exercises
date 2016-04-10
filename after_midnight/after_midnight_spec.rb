require './after_midnight.rb'

describe 'after_midnight' do

	it 'should return "Sunday 00:00" when passed 0' do
		expect(after_midnight(0)).to eq "Sunday 00:00"
	end

	it 'should return "Sunday 00:01" when passed 1' do
		expect(after_midnight(1)).to eq "Sunday 00:01"
	end

	it 'should return "Saturday 23:57" when passed -3' do
		expect(after_midnight(-3)).to eq "Saturday 23:57"
	end

end