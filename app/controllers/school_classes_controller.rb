class SchoolClassesController<ApplicationController

  def new
    @school_class=SchoolClass.new
  end

  def create
    @school_class.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path
  end

  def show
    @school_class=SchoolClass.find(params[:id])
  end

  def edit
    @school_class=SchoolClass.find(params[:id])
  end

  def update
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path
  end



end
