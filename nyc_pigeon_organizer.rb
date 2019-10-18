def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  pigeons = data[:gender][:male] + data[:gender][:female]
  pigeons.each do |pigeon|
    new_hash[pigeon] = {color: [], gender: [], lives: []}
    if data[:gender][:male].include?(pigeon)
      new_hash[pigeon][:gender] = ["male"]
    else
      new_hash[pigeon][:gender] = ["female"]
    end
    data[:color].each do |key, value|
      if value.include?(pigeon)
        new_hash[pigeon][:color].push(key.to_str)
      end
    end
  end

    
  
  new_hash
end
