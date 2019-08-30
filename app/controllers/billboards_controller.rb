class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :edit]

  def index
    @billboards = Billboard.all
  end

  def show
    
  end

  def new
  end

  def edit
    
  end

  private

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end

end
