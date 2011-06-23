class TargetFactsController < ApplicationController
  # GET /target_facts
  # GET /target_facts.xml
  def index
    @target_facts = TargetFact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @target_facts }
    end
  end

  # GET /target_facts/1
  # GET /target_facts/1.xml
  def show
    @target_fact = TargetFact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @target_fact }
    end
  end

  # GET /target_facts/new
  # GET /target_facts/new.xml
  def new
    @target_fact = TargetFact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @target_fact }
    end
  end

  # GET /target_facts/1/edit
  def edit
    @target_fact = TargetFact.find(params[:id])
  end

  # POST /target_facts
  # POST /target_facts.xml
  def create
    @target_fact = TargetFact.new(params[:target_fact])

    respond_to do |format|
      if @target_fact.save
        format.html { redirect_to(@target_fact, :notice => 'Target fact was successfully created.') }
        format.xml  { render :xml => @target_fact, :status => :created, :location => @target_fact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @target_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /target_facts/1
  # PUT /target_facts/1.xml
  def update
    @target_fact = TargetFact.find(params[:id])

    respond_to do |format|
      if @target_fact.update_attributes(params[:target_fact])
        format.html { redirect_to(@target_fact, :notice => 'Target fact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @target_fact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /target_facts/1
  # DELETE /target_facts/1.xml
  def destroy
    @target_fact = TargetFact.find(params[:id])
    @target_fact.destroy

    respond_to do |format|
      format.html { redirect_to(target_facts_url) }
      format.xml  { head :ok }
    end
  end
end
