require 'spec_helper'

describe Game do
	let(:game) { Game.new }

	before(:each) do 
		allow(game).to receive(:puts)
		allow(game).to receive(:print)
	end

	describe "#start" do
		it "puts a welcome message" do
			expect(game).to receive(:puts).with("\nWelcome to Connect Four!\n")
			game.start
		end
		it "sets first player to player 1" do
			game.start
			expect(game.current_player.type).to be == 1
		end
	end

end

describe Player do
	let(:player) { Player.new(1,1) }

	it "creates a player" do
		expect(player).to be_an_instance_of Player
		expect(player.type).to be == 1
		expect(player.marker).to be == 1
	end
end

describe Board do
	let(:board) { Board.new }
	
	describe "#new" do
		it "creates board" do
			expect(board).to be_an_instance_of Board
		end
	end

end

