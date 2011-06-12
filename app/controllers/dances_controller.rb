class DancesController < ApplicationController
  # GET /dances
  # GET /dances.xml
  def index
    @dances = Dance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dances }
    end
  end

  # GET /dances/1
  # GET /dances/1.xml
  def show
    @dance = Dance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dance }
    end
  end

  # GET /dances/new
  # GET /dances/new.xml
  def new
    @dance = Dance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dance }
    end
  end

  # GET /dances/1/edit
  def edit
    @dance = Dance.find(params[:id])
  end

  # POST /dances
  # POST /dances.xml
  def create
    @dance = Dance.new(params[:dance])

    respond_to do |format|
      if @dance.save
        flash[:notice] = 'Dance was successfully created.'
        format.html { redirect_to(@dance) }
        format.xml  { render :xml => @dance, :status => :created, :location => @dance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dances/1
  # PUT /dances/1.xml
  def update
    @dance = Dance.find(params[:id])

    respond_to do |format|
      if @dance.update_attributes(params[:dance])
        flash[:notice] = 'Dance was successfully updated.'
        format.html { redirect_to(@dance) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dances/1
  # DELETE /dances/1.xml
  def destroy
    @dance = Dance.find(params[:id])
    @dance.destroy

    respond_to do |format|
      format.html { redirect_to(dances_url) }
      format.xml  { head :ok }
    end
  end
end
