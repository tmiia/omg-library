class TypesController < ApplicationController
  def index
    @types = Type.all
  end
  def show
    @type = Type.find(params[:id])
  end

  def new
    @type = Type.new
  end

  def update
    if @type.update(type_params)
      redirect_to types_path, notice: "type was successfully updated."
    else
      render :edit
    end
  end

  def create
    @type = Type.new(type_params)

    if @type.save
      redirect_to @type
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def type_params
      params.require(:type).permit(:name, :description)
    end
end
