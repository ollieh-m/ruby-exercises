def runoff(voters, count={})
  voters.each do |voter|
    count.keys.include?(voter[0]) ? count[voter[0]] += 1 : count[voter[0]] = 1
  end
  sorted_hash = count.sort_by{ |cand,votes| votes }
  if sorted_hash.last[1] > voters.length / 2
    sorted_hash.last[0]
  else
    sorted_hash.select{ |cand,votes| votes == sorted_hash.first[1] }.each do |losing_cand,votes|
      voters = voters.map do |vote|
        vote.select{ |cand| cand != losing_cand }
      end
    end
    leftover_cands = Hash[sorted_hash.select{ |cand,votes| votes != sorted_hash.first[1] }]
    runoff(voters)
  end
end
