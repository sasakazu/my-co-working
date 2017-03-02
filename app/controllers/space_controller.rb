class SpaceController < ApplicationController



  def new
    @space = Space.new
  end

  def create
    @spaces = current_user.spaces.build(space_params)

    if @spaces.save
      redirect_to current_user
    else
      render 'new'

    end
  end

  def show
    @space = Space.find(params[:id])
  end

  def edit
  end


  private

    def space_params
      params.require(:space).permit(:title, :place, :image)

    end



end
