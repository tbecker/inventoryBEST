class InventoryTransactionFactsController < ApplicationController
  # GET /inventory_transaction_facts
  # GET /inventory_transaction_facts.xml
  def index
    @inventory_transaction_facts = InventoryTransactionFact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventory_transaction_facts }
    end
  end

  # GET /inventory_transaction_facts/1
  # GET /inventory_transaction_facts/1.xml
  def show
    @inventory_transaction_fact = InventoryTransactionFact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inventory_transaction_fact }
    end
  end

  # GET /inventory_transaction_facts/new
  # GET /inventory_transaction_facts/new.xml
  def new
    @inventory_transaction_fact = InventoryTransactionFact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inventory_transaction_fact }
    end
  end

  # GET /inventory_transaction_facts/1/edit
  def edit
    @inventory_transaction_fact = InventoryTransactionFact.find(params[:id])
  end

  # POST /inventory_transaction_facts
  # POST /inventory_transaction_facts.xml
  def create
    @inventory_transaction_fact = InventoryTransactionFact.new(params[:inventory_transaction_fact])

    respond_to do |format|
      if @inventory_transaction_fact.save
        format.html { redirect_to(@inventory_transaction_fact, :notice => 'Inventory transaction fact was successfully created.') }
        format.xml  { render :xml => @inventory_transaction_fact, :status => :created, :location => @inventory_transaction_fact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inventory_transaction_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_transaction_facts/1
  # PUT /inventory_transaction_facts/1.xml
  def update
    @inventory_transaction_fact = InventoryTransactionFact.find(params[:id])

    respond_to do |format|
      if @inventory_transaction_fact.update_attributes(params[:inventory_transaction_fact])
        format.html { redirect_to(@inventory_transaction_fact, :notice => 'Inventory transaction fact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inventory_transaction_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_transaction_facts/1
  # DELETE /inventory_transaction_facts/1.xml
  def destroy
    @inventory_transaction_fact = InventoryTransactionFact.find(params[:id])
    @inventory_transaction_fact.destroy

    respond_to do |format|
      format.html { redirect_to(inventory_transaction_facts_url) }
      format.xml  { head :ok }
    end
  end
end
