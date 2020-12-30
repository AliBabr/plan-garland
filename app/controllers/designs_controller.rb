class DesignsController < ApplicationController
  def index

  end

  def new
    @design = Design.new
  end

  def create
    binding.pry
    # @design = Design.new(circuit_params)
    # if @design.save
    #   redirect_to designs_path
    # else
    #   render 'new'
    # end
  end
  private

  def set_design
    @design = Design.find(params[:id])
  end

  def design_params
    params.require(:design).permit(:name, :type, :height, :width, :ballon_size, :ballon_count)
  end
end
