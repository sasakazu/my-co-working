class SpaceController < ApplicationController



  def new
    @space = Space.new
  end

  def create
    @spaces = current_user.spaces.build(space_params)

    if @spaces.save
      redirect_to root_path
    else
      render 'new'

    end
  end

  def show
  end

  def edit
  end


  private

    def space_params
      params.require(:space).permit(:title, :place, :image)

    end



end
