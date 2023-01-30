class TblsController <ApplicationController

  before_action :set_todo,only: [:edit, :update, :show, :destory]

  def new
    @todo=Tbl.new
  end

  def create
    @todo=Tbl.new(tbl_params)
    if @todo.save
      flash[:notice]="Todo is created"
      redirect_to tbl_path(@todo)
    else
      render 'new', status: 422
    end
  end

  def show
  end

  def edit
  end

  def update
    if @todo.update(tbl_params)
      flash[:notice]="Todo is Updated Successfully"
      redirect_to tbl_path(@todo)
    else
      render 'edit', status: 422
    end
  end

  def index
    @todo=Tbl.all
  end

  def destroy
    @todo.destroy
    redirect_to tbl_path(), status: :see_other
  end

  private

  def set_todo
    @todo = Tbl.find(params[:id])
  end
  def tbl_params
    params.require(:tbl).permit(:name,:description)
  end
end
