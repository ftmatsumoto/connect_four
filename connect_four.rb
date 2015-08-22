class Node
	attr_accessor :value, :up, :down, :left, :right, :ul, :dl, :ur, :dr

	def initialize(value=nil,up=nil,down=nil,left=nil,right=nil,ul=nil,dl=nil,ur=nil,dr=nil)
		@value = value
		@up = up
		@down = down
		@left = left
		@right = right
		@ul = ul
		@dl = dl
		@ur = ur
		@dr = dr
	end
end

class Board
	attr_accessor :board

	def initialize
		@board = Array.new(6) { Array.new(7) { Node.new } }
	end
end

class	Player
	attr_accessor :type, :marker

	def initialize(type, marker)
		@type = type
		@marker = marker
	end

end

class Game
	def start
		puts "\nWelcome to Connect Four!\n"
		@player1 = Player.new(1, 1)
		@player2 = Player.new(2, 2)
		@board = Board.new

#		@players = [@player1, @player2]
#		@current_player, @next_player = @players.shuffle
		@current_player, @next_player = @player1, @player2
	end

end
