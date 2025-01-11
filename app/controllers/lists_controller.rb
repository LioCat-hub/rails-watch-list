class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    @list.save
    redirect_to @list, notice: 'Movie was successfully deleted.', status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
