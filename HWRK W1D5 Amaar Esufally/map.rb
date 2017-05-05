class Map
  def initialize
    @map = []
  end

  def assign(key,value)
    exists = false
    if @map.any? {|el| el[0] == key}
      exists = true
    end

    if exists
      puts "Key already exists, would you like to replace it? (y/n)"
      input = gets.chomp
      if input == "y"
        self.remove(key)
        @map << [key,value]
      elsif input == "n"
        puts "Key not overwritten"
      end
    else
      @map << [key,value]
    end

  end

  def lookup(key)
    (@map.select {|el| el[0] == key}).last.last
  end

  def remove(key)
    @map = @map.reject {|el| el[0] == key}
  end

  def show
    @map
  end
end
