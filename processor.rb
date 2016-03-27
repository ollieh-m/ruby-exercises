class BatchItemProcessor

  attr_accessor :processed, :match_criteria

  def initialize
    @processed = []
    @match_criteria = ''
    @match_value = []
    @callback_defined = false
  end

  def process_items(enum,&block)
    enum.each do |item|
      	unless (@processed.include?(item) or (@callback_defined and callback(item) == false))
      		if item.is_a?(Hash)
      			unless (item.has_key?(@match_criteria) and @match_value.include?(item[@match_criteria]))
      		  		@processed.push(item)
         	  		block.call(item)
         	  		@match_value.push(item[@match_criteria])
         		end
        	else
        		unless @match_criteria != '' and @match_value.include?(item.send(@match_criteria))
        	  		@processed.push(item)
         	  		block.call(item)
         	  		if @match_criteria != ''
         	  			@match_value.push(item.send(@match_criteria))
         	  		end
         		end
        	end
      	end
    end
  end

  def processed_items
  	@processed
  end

  def identify(match_criteria='')
  	@match_criteria = match_criteria
  end

  def should_process(&block)
  	@callback_defined = true
  	self.class.send(:define_method,"callback") do |item|
  		block.call(item)
  	end
  end

  def reset
  	@processed = []
  	@match_criteria = ''
  	@match_value = []
  	@callback_defined = false
  end

end

processor = BatchItemProcessor.new

processor.should_process do |item|
  item % 2 == 0
end

processor.process_items([1,2,3,4,5,6]) do |item|
	puts item * 3
end
