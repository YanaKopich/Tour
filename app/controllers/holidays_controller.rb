class HolidaysController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_holiday, only: [:show, :edit, :update, :destroy]

  def index
    @holidays = Holiday.all
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = current_user.holidays.build(holiday_param)
    if @holiday.save
     flash[:notice] = "Tour successfully created"
     redirect_to holiday_path(@holiday.id)
   else
     flash[:error] = "Tour has error with created"
     render 'new'
   end
  end

  def show
    @comments = @holiday.tour_comments
  end

  def edit
  end

  def update
    if @holiday.update(holiday_param)
      flash[:notice] = "Tour successfully updated"
      redirect_to holiday_path(@holiday.id)
    else
      flash[:error] = "Tour has error with created"
      render 'edit'
    end
  end

  def destroy
    @holiday.destroy
    redirect_to root_path
  end
private
  def holiday_param
    params.require(:holiday).permit(:user_id, :name, :description, :price, :pricetype_id, :contacts, {photos: []})
  end

  def find_holiday
   @holiday = Holiday.find_by(id: params[:id])
 end
end
