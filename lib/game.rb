class Game
  WINNING_COMBO = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze
  attr_reader :first_player, :second_player, :game_array

  def initialize
    @first_player = Player.new('', 'X')
    @second_player = Player.new('', 'O')
    @game_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def starting
    position = 0
    i = 0
    while i < 9
      moving(@first_player, position)
      game_board(game_array)
      return winner(@first_player.name) if check_win?(WINNING_COMBO, @first_player.arr)

      i += 1
      break if i >= 9

      moving(@second_player, position)
      game_board(game_array)
      return winner(@second_player.name) if check_win?(WINNING_COMBO, @second_player.arr)

      i += 1
      break if i >= 9

    end
    draw
  end

  def check_win?(arr1, arr2)
    arr1.length.times do |item|
      return true if arr1[item].all? { |x| arr2.include?(x) }
    end
    false
  end

  def check_the_move?(position, letter)
    case position
    when 1..9
      if @game_array[position - 1].is_a?(Integer)
        @game_array[position - 1] = letter
        true
      else
        puts 'Please pick an empty position!'
        false
      end
    else
      puts 'Please pick a valid position!'
      false
    end
  end
end
