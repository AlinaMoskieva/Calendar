class MyMeetingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  def index
    @meetings = current_user.meetings.order(start_time: :desc)
    @type = request.params[:format]
  end

  def new
    @meeting = current_user.meetings.new
  end

  def edit
  end

  def show
  end

  def create
    @meeting = current_user.meetings.new(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to my_meetings_path, notice: 'Meeting was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

 def destroy
   @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
    end
  end

  def update
    respond_to do |format|
       if @meeting.update(meeting_params)
          format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        else
          format.html { render :edit }
        end
    end
  end

  private
  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:name, :user_id, :start_time, :details, :note, :place, :priority)
  end
end
