def group_check(s)
  arr = s.chars
  
  if arr.count("(") == arr.count(")") and arr.count("{") == arr.count("}") and arr.count("[") == arr.count("]")
  	
  	#test for closed brackets if there are the right number of brackets#
  	i = 0
  	fail = []
    while i < arr.length
       	if arr[i] == "("
    		if arr.index(")") > i
    			arr.delete_at(arr.index(")"))
    		else
    			fail << "NO ) TO CLOSE ("
    		end
    	elsif arr[i] == "{"
    		if arr.index("}") > i
    			arr.delete_at(arr.index("}"))
    		else
    			fail << "NO } TO CLOSE {"
    		end
    	elsif arr[i] == "["
    		if arr.index("]") > i
    			arr.delete_at(arr.index("]"))
    		else
    			fail << "NO ] TO CLOSE ["
    		end
    	end
    	i = i + 1
    end
    
    #test for ordering of brackets if all brackets close#
    if fail.empty?
    	i = 0
    	while i < arr.length
    		if arr[i] == "("
    			if arr.index("{") < arr.rindex(")")
    				if arr.rindex("}") > arr.rindex(")")
    					fail << "BRACKETS DO NOT CLOSE IN RIGHT ORDER"
    				end
    			end
    			if arr.index("[") < arr.rindex(")")
    				if arr.rindex("]") > arr.rindex(")")
    					fail << "BRACKETS DO NOT CLOSE IN RIGHT ORDER"
    				end
    			end
    			if fail.empty?
    				arr.delete_at(arr.index(i))
    				arr.delete_at(arr.rindex(")"))
    			end
    		elsif arr[i] == "{"
    			if arr.index("(") < arr.rindex("}")
    				if arr.rindex(")") > arr.rindex("}")
    					fail << "BRACKETS DO NOT CLOSE IN RIGHT ORDER"
    				end
    			end
    			if arr.index("[") < arr.rindex("}")
    				if arr.rindex("]") > arr.rindex("}")
    					fail << "BRACKETS DO NOT CLOSE IN RIGHT ORDER"
    				end
    			end
    			if fail.empty?
    				arr.delete_at(arr.index(i))
    				arr.delete_at(arr.rindex("}"))
    			end
    		elsif arr[i] == "["
    			if arr.index("(") < arr.rindex("]")
    				if arr.rindex(")") > arr.rindex("]")
    					fail << "BRACKETS DO NOT CLOSE IN RIGHT ORDER"
    				end
    			end
    			if arr.index("{") < arr.rindex("]")
    				if arr.rindex("}") > arr.rindex("]")
    					fail << "BRACKETS DO NOT CLOSE IN RIGHT ORDER"
    				end
    			end
    			if fail.empty?
    				arr.delete_at(arr.index(i))
    				arr.delete_at(arr.rindex("]"))
    			end
    		end
    		i = i + 1
    	end
    end

    fail.empty?

else

	false

end

end


puts group_check("({[({})])}")