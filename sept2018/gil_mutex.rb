array = []
mutex = Mutex.new

10.times.map do
  Thread.new do
    mutex.synchronize do
      10000.times do
        array << nil
      end
    end
  end
end.each(&:join)

pp array.size
