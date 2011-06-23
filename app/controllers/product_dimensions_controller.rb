class ProductDimensionsController < ApplicationController
  # GET /product_dimensions
  # GET /product_dimensions.xml
  def index
    @product_dimensions = ProductDimension.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_dimensions }
    end
  end

  # GET /product_dimensions/1
  # GET /product_dimensions/1.xml
  def show
    @product_dimension = ProductDimension.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_dimension }
    end
  end

  # GET /product_dimensions/new
  # GET /product_dimensions/new.xml
  def new
    @product_dimension = ProductDimension.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_dimension }
    end
  end

  # GET /product_dimensions/1/edit
  def edit
    @product_dimension = ProductDimension.find(params[:id])
  end

  # POST /product_dimensions
  # POST /product_dimensions.xml
  def create
    @product_dimension = ProductDimension.new(params[:product_dimension])

    respond_to do |format|
      if @product_dimension.save
        format.html { redirect_to(@product_dimension, :notice => 'Product dimension was successfully created.') }
        format.xml  { render :xml => @product_dimension, :status => :created, :location => @product_dimension }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_dimensions/1
  # PUT /product_dimensions/1.xml
  def update
    @product_dimension = ProductDimension.find(params[:id])

    respond_to do |format|
      if @product_dimension.update_attributes(params[:product_dimension])
        format.html { redirect_to(@product_dimension, :notice => 'Product dimension was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_dimensions/1
  # DELETE /product_dimensions/1.xml
  def destroy
    @product_dimension = ProductDimension.find(params[:id])
    @product_dimension.destroy

    respond_to do |format|
      format.html { redirect_to(product_dimensions_url) }
      format.xml  { head :ok }
    end
  end
end
