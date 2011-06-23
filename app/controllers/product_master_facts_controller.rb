class ProductMasterFactsController < ApplicationController
  # GET /product_master_facts
  # GET /product_master_facts.xml
  def index
    @product_master_facts = ProductMasterFact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_master_facts }
    end
  end

  # GET /product_master_facts/1
  # GET /product_master_facts/1.xml
  def show
    @product_master_fact = ProductMasterFact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_master_fact }
    end
  end

  # GET /product_master_facts/new
  # GET /product_master_facts/new.xml
  def new
    @product_master_fact = ProductMasterFact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_master_fact }
    end
  end

  # GET /product_master_facts/1/edit
  def edit
    @product_master_fact = ProductMasterFact.find(params[:id])
  end

  # POST /product_master_facts
  # POST /product_master_facts.xml
  def create
    @product_master_fact = ProductMasterFact.new(params[:product_master_fact])

    respond_to do |format|
      if @product_master_fact.save
        format.html { redirect_to(@product_master_fact, :notice => 'Product master fact was successfully created.') }
        format.xml  { render :xml => @product_master_fact, :status => :created, :location => @product_master_fact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_master_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_master_facts/1
  # PUT /product_master_facts/1.xml
  def update
    @product_master_fact = ProductMasterFact.find(params[:id])

    respond_to do |format|
      if @product_master_fact.update_attributes(params[:product_master_fact])
        format.html { redirect_to(@product_master_fact, :notice => 'Product master fact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_master_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_master_facts/1
  # DELETE /product_master_facts/1.xml
  def destroy
    @product_master_fact = ProductMasterFact.find(params[:id])
    @product_master_fact.destroy

    respond_to do |format|
      format.html { redirect_to(product_master_facts_url) }
      format.xml  { head :ok }
    end
  end
end
