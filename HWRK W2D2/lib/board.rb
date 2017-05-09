require 'byebug'
class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2

    @cups = Array.new(14) {[]}
    @cups.each_with_index do |item,index|
      unless index == 6 || index == 13
        4.times do
          @cups[index] << :stone
        end
      end

    end

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 12 || start_pos < 0 || @cups[start_pos].empty?
      raise "Invalid starting cup"
    end

  end

  def make_move(start_pos, current_player_name)

    rocks = @cups[start_pos]
    len = @cups[start_pos].length

    @cups[start_pos] = []
    i = start_pos


    until rocks.empty?
      i += 1
      if i == 14
        i = 0
      end
      if current_player_name == name2
          unless i == 6
            @cups[i] << rocks.pop
          end
        elsif current_player_name == name1
          unless i == 13
            @cups[i] << rocks.pop
          end
        end
      end
    render
    next_turn(i)


  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 13 || ending_cup_idx == 6
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    first = @cups[0..5]
    right = @cups[7..12]
    if first.all? {|arr| arr.empty?} || right.all? {|arr| arr.empty?}
      return true
    end
    false
  end

  def winner
    if @cups[6].count > @cups[13].count
      return @name1
    elsif @cups[6].count < @cups[13].count
      return @name2
    else
      :draw
    end
  end
end
