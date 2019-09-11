class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color| 
      puts color
      sleep 1.0
      system("clear")
      sleep 0.5
    end
  end

  def require_sequence
    puts "enter sequence"
    input = gets.chomp
    input_sequence = input.split(" ")
    input_sequence
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "you won a round"
  end

  def game_over_message
    unless require_sequence == seq
      puts "game_over"
      game_over = true
    end
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
