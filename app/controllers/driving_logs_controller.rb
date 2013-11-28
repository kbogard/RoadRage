class DrivingLogsController < ApplicationController
  # GET /driving_logs
  # GET /driving_logs.json
  def index
    @driving_logs = DrivingLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @driving_logs }
    end
  end

  # GET /driving_logs/1
  # GET /driving_logs/1.json
  def show
    @driving_log = DrivingLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @driving_log }
    end
  end

  # GET /driving_logs/new
  # GET /driving_logs/new.json
  def new
    @driving_log = DrivingLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @driving_log }
    end
  end

  # GET /driving_logs/1/edit
  def edit
    @driving_log = DrivingLog.find(params[:id])
  end

  # POST /driving_logs
  # POST /driving_logs.json
  def create
    @driving_log = DrivingLog.new(params[:driving_log])

    respond_to do |format|
      if @driving_log.save
        format.html { redirect_to @driving_log, notice: 'Driving log was successfully created.' }
        format.json { render json: @driving_log, status: :created, location: @driving_log }
      else
        format.html { render action: "new" }
        format.json { render json: @driving_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /driving_logs/1
  # PUT /driving_logs/1.json
  def update
    @driving_log = DrivingLog.find(params[:id])

    respond_to do |format|
      if @driving_log.update_attributes(params[:driving_log])
        format.html { redirect_to @driving_log, notice: 'Driving log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @driving_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driving_logs/1
  # DELETE /driving_logs/1.json
  def destroy
    @driving_log = DrivingLog.find(params[:id])
    @driving_log.destroy

    respond_to do |format|
      format.html { redirect_to driving_logs_url }
      format.json { head :no_content }
    end
  end
end
