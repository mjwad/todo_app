class TblsController <ApplicationController

  before_action  :instance_variable

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
    @tblid=Tbl.find(params[:id])
  end

  private

  def tbl_params
    params.require(:tbl).permit(:name,:description)
  end

  def instance_variable
    @tblid=Tbl.find(params[:id])
    @newVar="Somethin"
    @insVar=Tbl.all
  end
end
