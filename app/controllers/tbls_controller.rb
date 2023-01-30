class TblsController <ApplicationController

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

  def edit
    @todo=Tbl.find(params[:id])
  end

  def update
    @todo=Tbl.find(params[:id])

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
    @todo = Tbl.find(params[:id])
    @todo.destroy
    redirect_to tbl_path(), status: :see_other
  end

  private

  def tbl_params
    params.require(:tbl).permit(:name,:description)
  end
end
