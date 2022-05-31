class ArtsController < ApplicationController
  before_action :set_art, only: %i[ show edit update destroy ]

  def index
    @arts = Art.all
  end

  def show
  end

  def new
    @art = Art.new
  end

  def edit
  end

  def create
    @art = Art.new(art_params)

    respond_to do |format|
      if @art.save
        redirect_to art_url(@art), notice: "Art was successfully created."
      else
        render :new
      end
    end
  end

  def update
    if @art.update(art_params)
      redirect_to art_url(@art), notice: "Art was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @art.destroy
    redirect_to arts_url, notice: "Art was successfully destroyed."
  end

  private

  def set_art
    @art = Art.find(params[:id])
  end

  def art_params
    params.require(:art).permit(:name, :type, :price, :description, :is_avaiable, :user_id)
  end
end
