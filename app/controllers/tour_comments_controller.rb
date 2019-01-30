class TourCommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_holiday

   def new
    @comment = TourComment.new
  end

   def create
    params[:tour_comment][:user_id] = current_user.id
    params[:tour_comment][:holiday_id] = @holiday.id
    @comment = TourComment.new(comment_params)
    if @comment.save
      redirect_to holiday_path(@holiday.id)
    else
      render 'new'
    end

   end

   def show
  end

   def edit
  end

   def update
  end

   def destroy
  end

 private
  def set_holiday
    @holiday = Holiday.find_by(id: params[:holiday_id])
  end

   def comment_params
    params.require(:tour_comment).permit(:user_id, :holiday_id, :body)
  end
end
