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
    data[:color].each do |color|
      if color.include?(pigeon)
        new_hash[pigeon][:color] = ["white"]
      end
    end
  end

    
  
  new_hash
end
