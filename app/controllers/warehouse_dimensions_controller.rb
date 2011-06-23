class WarehouseDimensionsController < ApplicationController
  # GET /warehouse_dimensions
  # GET /warehouse_dimensions.xml
  def index
    @warehouse_dimensions = WarehouseDimension.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @warehouse_dimensions }
    end
  end

  # GET /warehouse_dimensions/1
  # GET /warehouse_dimensions/1.xml
  def show
    @warehouse_dimension = WarehouseDimension.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @warehouse_dimension }
    end
  end

  # GET /warehouse_dimensions/new
  # GET /warehouse_dimensions/new.xml
  def new
    @warehouse_dimension = WarehouseDimension.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @warehouse_dimension }
    end
  end

  # GET /warehouse_dimensions/1/edit
  def edit
    @warehouse_dimension = WarehouseDimension.find(params[:id])
  end

  # POST /warehouse_dimensions
  # POST /warehouse_dimensions.xml
  def create
    @warehouse_dimension = WarehouseDimension.new(params[:warehouse_dimension])

    respond_to do |format|
      if @warehouse_dimension.save
        format.html { redirect_to(@warehouse_dimension, :notice => 'Warehouse dimension was successfully created.') }
        format.xml  { render :xml => @warehouse_dimension, :status => :created, :location => @warehouse_dimension }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @warehouse_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /warehouse_dimensions/1
  # PUT /warehouse_dimensions/1.xml
  def update
    @warehouse_dimension = WarehouseDimension.find(params[:id])

    respond_to do |format|
      if @warehouse_dimension.update_attributes(params[:warehouse_dimension])
        format.html { redirect_to(@warehouse_dimension, :notice => 'Warehouse dimension was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @warehouse_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouse_dimensions/1
  # DELETE /warehouse_dimensions/1.xml
  def destroy
    @warehouse_dimension = WarehouseDimension.find(params[:id])
    @warehouse_dimension.destroy

    respond_to do |format|
      format.html { redirect_to(warehouse_dimensions_url) }
      format.xml  { head :ok }
    end
  end
end
