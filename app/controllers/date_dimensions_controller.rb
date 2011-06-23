class DateDimensionsController < ApplicationController
  # GET /date_dimensions
  # GET /date_dimensions.xml
  def index
    @date_dimensions = DateDimension.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @date_dimensions }
    end
  end

  # GET /date_dimensions/1
  # GET /date_dimensions/1.xml
  def show
    @date_dimension = DateDimension.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @date_dimension }
    end
  end

  # GET /date_dimensions/new
  # GET /date_dimensions/new.xml
  def new
    @date_dimension = DateDimension.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @date_dimension }
    end
  end

  # GET /date_dimensions/1/edit
  def edit
    @date_dimension = DateDimension.find(params[:id])
  end

  # POST /date_dimensions
  # POST /date_dimensions.xml
  def create
    @date_dimension = DateDimension.new(params[:date_dimension])

    respond_to do |format|
      if @date_dimension.save
        format.html { redirect_to(@date_dimension, :notice => 'Date dimension was successfully created.') }
        format.xml  { render :xml => @date_dimension, :status => :created, :location => @date_dimension }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @date_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /date_dimensions/1
  # PUT /date_dimensions/1.xml
  def update
    @date_dimension = DateDimension.find(params[:id])

    respond_to do |format|
      if @date_dimension.update_attributes(params[:date_dimension])
        format.html { redirect_to(@date_dimension, :notice => 'Date dimension was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @date_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /date_dimensions/1
  # DELETE /date_dimensions/1.xml
  def destroy
    @date_dimension = DateDimension.find(params[:id])
    @date_dimension.destroy

    respond_to do |format|
      format.html { redirect_to(date_dimensions_url) }
      format.xml  { head :ok }
    end
  end
end
