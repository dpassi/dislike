class BubblesController < ApplicationController
  def index
    @usuario = User.first
    @nombre = @usuario['name']
    @descontento = Dislike.first
    @union = Disliked.first
    gon.your_variable = @nombre

  end

  def up_quantity
    puts 'hola'

    @descontento = Dislike.find(params[:dislike_id])
    puts @descontento.name
    @descontento.quantity += 1
    @descontento.save
  end

end
