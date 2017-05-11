# fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']



def linear_search(fish)
  result = fish[0]
  fish.each do |f|
    if f.length > result.length
      result = f
    end
  end
  result
end


def quadratic_search(fish)
  longest = false

  until longest
  fish.each_with_index do |item, index|
    longest = true

    fish.each_with_index do |item2,index|
      if item2.length > item.length
        longest = false
      end
    end

    return item if longest
  end
end
end

#merge_search

class Array

def self.merge_fish(smaller,bigger, &prc)
  result = []
  until smaller.empty? || bigger.empty?
    if prc.call(smaller.first,bigger.first) <= 0
      result << smaller.shift
    else
      result << bigger.shift
    end
  end
  result.concat(smaller).concat(bigger)
end

  def merge_search_fish(&prc)
    prc ||= Proc.new {|x,y| x.length <=> y.length}
    mid = self[length/2]
    smaller = select {|el| prc.call(el,mid) <= 0}
    bigger = select {|el| prc.call(el,mid) >0 }
    res = Array.merge_fish(smaller, bigger, &prc)
    res.last
  end


end

def slow_dance(direction, array)
  array.each_with_index do |tentacle,index|
    if tentacle == direction
      return index
    end
  end
end


def fast_dance(direction, array)

tiles = { "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7 }

  tiles[direction]
end
