def dbl_linear(n)
   u = [1]
   i = 0
   while (u.length <= n+1 or (2*u[i]+1) < u[n] or (3*u[i]+1) < u[n])
     u.push(2*u[i]+1).push(3*u[i]+1)
     u = u.uniq.sort
     i = i + 1
   end
   u[n]
end

def inbetween_placer(array,value)
  low = 0
  high = (array.length)-1
  mid = (low + high)/2
  keep_going = true
  until keep_going == false
      if value > array[mid]
        low = mid + 1
        mid = (low + high)/2
      elsif value < array[mid-1]
        high = mid - 1
        mid = (low + high)/2
      elsif (value == array[mid] or value == array[mid-1])
        return false
        keep_going = false
      else
        return mid
        keep_going = false
      end
  end
end

def dbl_linear_2(n)
   u = [1]
   i = 0
   while (u.length <= n+1 or (2*u[i]+1) < u[n] or (3*u[i]+1) < u[n])
      if u.last < (2*u[i]+1)
     	  u.push(2*u[i]+1)
      else
     	  index = inbetween_placer(u,(2*u[i]+1))
          unless index == false
            u.insert(index,(2*u[i]+1))
          end
      end
      u.push(3*u[i]+1)
      i = i + 1
   end
   u[n]
end

puts dbl_linear_2(1000)
