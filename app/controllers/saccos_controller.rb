class SaccosController < ApplicationController
  def index
    @saccos = Sacco.all
    render :index
  end

  def show
    @sacco = Sacco.find(params[:id])
    render :show
  end

  def new
    @sacco = Sacco.new
    render :new
  end

  def create
    @sacco = Sacco.new(sacco_params)
    if @sacco.save
      redirect_to saccos_path
    else
      render :new
    end
  end

  def edit
    @sacco = Sacco.find(params[:id])
    render :edit
  end

  def update
    @sacco = Sacco.find(params[:id])
    if @sacco.update(sacco_params)
      redirect_to saccos_path
    else
      render :edit
    end
  end

  def destroy
    @sacco = Sacco.find(params[:id])
    @sacco.destroy
    redirect_to saccos_path
  end

  private

  def sacco_params
    params.require(:sacco).permit(:name, :email, :phone, :logo)
  end
end
