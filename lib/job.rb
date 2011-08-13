Mandy.job "Stalking Stalker" do
  #map_tasks 5
  #reduce_tasks 3

  map do |line|
    stalker, stalking, date = line.split ","
    emit date, stalker
  end

  reduce do |date, stalkers|
    emit(date, stalkers.size)
  end
end
