class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
     @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(dose_params)
    @dose.destroy
    redirect_to cocktail_path
  end


  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
