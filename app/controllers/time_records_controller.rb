class TimeRecordsController < ApplicationController
  def new
    @timeRecord = TimeRecord.new
  end
  
  def create
    @timeRecord = TimeRecord.new(timeRecord_params)

    @timeRecord.save

    redirect_to :action => :show, :id => @timeRecord.id
   end

   def show
    @timeRecord = TimeRecord.find(params[:id])
  end

  def index
    @timeRecords= TimeRecord.all
  end

  private


  def timeRecord_params
    params.require(:timeRecord).permit(:date,:total_hs,:price_hs,:employee_id,:category_id)
  end

end
