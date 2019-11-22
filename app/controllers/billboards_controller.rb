class BillboardsController < ApplicationController
  

  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end
  
  def create
    @billboard = billboards.new(params[billboard_params])
  end
  
  def new
    @billboard = Billboard.new()
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path(@billboard)
  end 

  private 

     def billboard_params
        params.require(:billboard).permit(:name, :region, :rank, :genre)
     end 
end
