class DegreesController < ApplicationController
  def create
  end

  def destroy
    @degree = Degree.find(params[:id])
  end

  def update
    @degree = Degree.find(params[:id])
  end
end
