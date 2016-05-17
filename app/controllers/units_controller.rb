class UnitsController < ApplicationController
  def show
    @unit = Unit.find(params[:id])

  end
  def new
  end
  def index
  end
  def create
    @unit = Unit.new(department_params)
    @unit.save
    redirect_to @unit
  end

  def department_params
    params.require(:unit).permit(:deptcode,:deptname)
  end
end
