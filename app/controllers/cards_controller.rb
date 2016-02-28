class CardsController < ApplicationController

	before_action :set_card, only: [:edit, :update, :destroy]

  def index
#		@cards = Card.all
		@cards = Card.order("number ASC")
  end

	def create
		@card = Card.new(card_params)
		@card.save
		redirect_to cards_path
	end

	def new
		@card = Card.new
	end

	def edit
	end

	def update
		if request.referer.include?("edit")
			if @card.update(card_params)
				redirect_to root_path
			else
				render :edit
			end
		else
			if !@card.own
				@card.update(own: true)
			else
				@card.update(own: false)
			end
		end
	end

	def destroy
		@card.destroy
		redirect_to cards_path
	end

	private

		def card_params
			params[:card].permit(:number, :image, :name, :rarity, :attr, :own)
		end

		def set_card
			@card = Card.find(params[:id])
		end
end

