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
  end

  def edit
  end

  def update
    #code
  end

  def destroy
    #code
  end
  private
  def holiday_param
    params.require(:holiday).permit(:user_id, :name, :description, :price, :pricetype_id, :contacts, {photos: []})
  end
  def find_holiday
   @holiday = Holiday.find_by(id: params[:id])
 end
end
