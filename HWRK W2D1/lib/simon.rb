class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while game_over == false
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if game_over == false
      @sequence_length += 1
      round_success_message
      system("clear")
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.5
      system("clear")
      sleep 0.5
    end
  end

  def require_sequence
    puts "Please enter the sequence you just saw - each color, followed by enter"
    @seq.each do |color|
    input = gets.chomp.downcase
    if input != color
      @game_over = true
      break
    end
    end
    sleep 0.5
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "You win the round"
  end

  def game_over_message
    puts "You lose"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
