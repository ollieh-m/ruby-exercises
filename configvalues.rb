class Hash
  def get_value( default, *args )
    if self[args[0]].nil?
      default
    else
      hash = self[args[0]]
      args.delete_at(0)
      if args.empty? 
         hash
      elsif ((not hash.is_a?(Hash)) or (hash[args[0]].nil?))
         default
      else 
         hash.get_value( default, *args )
      end 
    end
  end
end

config = { :files => { :mode => 'abc' }, :name => "config" }
puts config.get_value('default',:name,:alphabet)