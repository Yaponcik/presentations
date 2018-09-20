array = []

10.times.map do
  Thread.new do
    10000.times do
      array << nil
    end
  end
end.each(&:join)

# I guess it should be 10000 * 10 = 100000

pp array.size
