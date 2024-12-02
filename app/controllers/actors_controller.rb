class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def create
    @actor = Actor.new(params.require(:actor).permit(:name, :birth_date, :nationality))

    if @actor.save
      redirect_to actor_url(id: @actor.id), notice: t('.success')
    end
  end

end