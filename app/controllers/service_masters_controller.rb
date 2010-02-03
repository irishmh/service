class ServiceMastersController < ApplicationController
  # GET /service_masters
  # GET /service_masters.xml
  def index
    @service_masters = ServiceMaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_masters }
    end
  end

  # GET /service_masters/1
  # GET /service_masters/1.xml
  def show
    @service_master = ServiceMaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_master }
    end
  end

  # GET /service_masters/new
  # GET /service_masters/new.xml
  def new
    @service_master = ServiceMaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_master }
    end
  end

  # GET /service_masters/1/edit
  def edit
    @service_master = ServiceMaster.find(params[:id])
  end

  # POST /service_masters
  # POST /service_masters.xml
  def create
    @service_master = ServiceMaster.new(params[:service_master])

    respond_to do |format|
      if @service_master.save
        flash[:notice] = 'ServiceMaster was successfully created.'
        format.html { redirect_to(@service_master) }
        format.xml  { render :xml => @service_master, :status => :created, :location => @service_master }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_masters/1
  # PUT /service_masters/1.xml
  def update
    @service_master = ServiceMaster.find(params[:id])

    respond_to do |format|
      if @service_master.update_attributes(params[:service_master])
        flash[:notice] = 'ServiceMaster was successfully updated.'
        format.html { redirect_to(@service_master) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_masters/1
  # DELETE /service_masters/1.xml
  def destroy
    @service_master = ServiceMaster.find(params[:id])
    @service_master.destroy

    respond_to do |format|
      format.html { redirect_to(service_masters_url) }
      format.xml  { head :ok }
    end
  end
end
