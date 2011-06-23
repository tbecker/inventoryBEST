class CompanyDimensionsController < ApplicationController
  # GET /company_dimensions
  # GET /company_dimensions.xml
  def index
    @company_dimensions = CompanyDimension.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @company_dimensions }
    end
  end

  # GET /company_dimensions/1
  # GET /company_dimensions/1.xml
  def show
    @company_dimension = CompanyDimension.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @company_dimension }
    end
  end

  # GET /company_dimensions/new
  # GET /company_dimensions/new.xml
  def new
    @company_dimension = CompanyDimension.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @company_dimension }
    end
  end

  # GET /company_dimensions/1/edit
  def edit
    @company_dimension = CompanyDimension.find(params[:id])
  end

  # POST /company_dimensions
  # POST /company_dimensions.xml
  def create
    @company_dimension = CompanyDimension.new(params[:company_dimension])

    respond_to do |format|
      if @company_dimension.save
        format.html { redirect_to(@company_dimension, :notice => 'Company dimension was successfully created.') }
        format.xml  { render :xml => @company_dimension, :status => :created, :location => @company_dimension }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @company_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /company_dimensions/1
  # PUT /company_dimensions/1.xml
  def update
    @company_dimension = CompanyDimension.find(params[:id])

    respond_to do |format|
      if @company_dimension.update_attributes(params[:company_dimension])
        format.html { redirect_to(@company_dimension, :notice => 'Company dimension was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @company_dimension.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /company_dimensions/1
  # DELETE /company_dimensions/1.xml
  def destroy
    @company_dimension = CompanyDimension.find(params[:id])
    @company_dimension.destroy

    respond_to do |format|
      format.html { redirect_to(company_dimensions_url) }
      format.xml  { head :ok }
    end
  end
end
