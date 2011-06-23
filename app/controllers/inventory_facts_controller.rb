class InventoryFactsController < ApplicationController
  # GET /inventory_facts
  # GET /inventory_facts.xml
  def index
    @inventory_facts = InventoryFact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventory_facts }
    end
  end

  # GET /inventory_facts/1
  # GET /inventory_facts/1.xml
  def show
    @inventory_fact = InventoryFact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inventory_fact }
    end
  end

  # GET /inventory_facts/new
  # GET /inventory_facts/new.xml
  def new
    @inventory_fact = InventoryFact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inventory_fact }
    end
  end

  # GET /inventory_facts/1/edit
  def edit
    @inventory_fact = InventoryFact.find(params[:id])
  end

  # POST /inventory_facts
  # POST /inventory_facts.xml
  def create
    @inventory_fact = InventoryFact.new(params[:inventory_fact])

    respond_to do |format|
      if @inventory_fact.save
        format.html { redirect_to(@inventory_fact, :notice => 'Inventory fact was successfully created.') }
        format.xml  { render :xml => @inventory_fact, :status => :created, :location => @inventory_fact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inventory_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_facts/1
  # PUT /inventory_facts/1.xml
  def update
    @inventory_fact = InventoryFact.find(params[:id])

    respond_to do |format|
      if @inventory_fact.update_attributes(params[:inventory_fact])
        format.html { redirect_to(@inventory_fact, :notice => 'Inventory fact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inventory_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_facts/1
  # DELETE /inventory_facts/1.xml
  def destroy
    @inventory_fact = InventoryFact.find(params[:id])
    @inventory_fact.destroy

    respond_to do |format|
      format.html { redirect_to(inventory_facts_url) }
      format.xml  { head :ok }
    end
  end
end
