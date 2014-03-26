class ClimbsController < ApplicationController
  # GET /climbs
  # GET /climbs.json
  def index
    @climbs = Climb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @climbs }
    end
  end

  # GET /climbs/1
  # GET /climbs/1.json
  def show
    @climb = Climb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @climb }
    end
  end

  # GET /climbs/new
  # GET /climbs/new.json
  def new
    @climb = Climb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @climb }
    end
  end

  # GET /climbs/1/edit
  def edit
    @climb = Climb.find(params[:id])
  end

  # POST /climbs
  # POST /climbs.json
  def create
    @climb = Climb.new(params[:climb])
    respond_to do |format|
      if @climb.save
        Session.find(params[:session_id]).climbs << @climb
        format.html { redirect_to @climb.session, notice: 'Climb was successfully created.' }
        format.json { render json: @climb.session.data.to_json, status: :created }
      else
        format.html { render action: "new" }
        format.json { render json: @climb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /climbs/1
  # PUT /climbs/1.json
  def update
    @climb = Climb.find(params[:id])

    respond_to do |format|
      if @climb.update_attributes(params[:climb])
        format.html { redirect_to @climb, notice: 'Climb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @climb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /climbs/1
  # DELETE /climbs/1.json
  def destroy
    @climb = Climb.find(params[:id])
    @climb.destroy

    respond_to do |format|
      format.html { redirect_to climbs_url }
      format.json { head :no_content }
    end
  end
end
