class BillboardsController < ApplicationController
  

  def index
    @billboards = Billboard.all
  end

  def show
    set_billboard
  end
  
  def create
    @billboard = Billboard.new(params[billboard_params])
    if @billboard.save
      redirect_to @billboard
    else
      render :new
    end
  end
  
  def new
    @billboard = Billboard.new
    # render partial: 'form'
  end

  def edit
    # render partial: 'form'
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path(@billboard)
  end 

  private 

     def billboard_params
        params.require(:billboard).permit(:name, :region, :rank, :genre)
     end 

     def set_billboard
      @billboard = Billboard.find(params[:id])
    end

end
