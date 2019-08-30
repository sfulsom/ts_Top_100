class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :edit, :update]

  def index
    @billboards = Billboard.all
  end

  def show
    
  end

  def new
    @billboard = Billboard.new
    render partial: 'form'
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @sub.update(billboard_params)
      redirect_to billboards_path
    else
      render :edit  
    end
  end

  def destroy
    Billboard.find(params[:id]).destroy
    redirect_to billboards_path
  end

  private

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end

  def billboard_params
    params.require(:billboards).permit(:rank, :artist, :title, :genre)
  end

end
