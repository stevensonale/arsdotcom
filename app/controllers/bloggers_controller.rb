class BloggersController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  # GET /bloggers
  # GET /bloggers.xml
  def index
    @bloggers = Blogger.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bloggers }
    end
  end

  # GET /bloggers/1
  # GET /bloggers/1.xml
  def show
    @blogger = Blogger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blogger }
    end
  end

  # GET /bloggers/new
  # GET /bloggers/new.xml
  def new
    @blogger = Blogger.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blogger }
    end
  end

  # GET /bloggers/1/edit
  def edit
    @blogger = Blogger.find(params[:id])
  end

  # POST /bloggers
  # POST /bloggers.xml
  def create
    @blogger = Blogger.new(params[:blogger])

    respond_to do |format|
      if @blogger.save
        format.html { redirect_to(@blogger, :notice => 'Blogger was successfully created.') }
        format.xml  { render :xml => @blogger, :status => :created, :location => @blogger }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blogger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bloggers/1
  # PUT /bloggers/1.xml
  def update
    @blogger = Blogger.find(params[:id])

    respond_to do |format|
      if @blogger.update_attributes(params[:blogger])
        format.html { redirect_to(@blogger, :notice => 'Blogger was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blogger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bloggers/1
  # DELETE /bloggers/1.xml
  def destroy
    @blogger = Blogger.find(params[:id])
    @blogger.destroy

    respond_to do |format|
      format.html { redirect_to(bloggers_url) }
      format.xml  { head :ok }
    end
  end
end
