class CitationTemplatesController < ApplicationController
  # GET /citation_templates
  # GET /citation_templates.json
  def index
    @citation_templates = CitationTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @citation_templates }
    end
  end

  # GET /citation_templates/1
  # GET /citation_templates/1.json
  def show
    @citation_template = CitationTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @citation_template }
    end
  end

  # GET /citation_templates/new
  # GET /citation_templates/new.json
  def new
    @citation_template = CitationTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @citation_template }
    end
  end

  # GET /citation_templates/1/edit
  def edit
    @citation_template = CitationTemplate.find(params[:id])
  end

  # POST /citation_templates
  # POST /citation_templates.json
  def create
    @citation_template = CitationTemplate.new(params[:citation_template])

    respond_to do |format|
      if @citation_template.save
        format.html { redirect_to @citation_template, notice: 'Citation template was successfully created.' }
        format.json { render json: @citation_template, status: :created, location: @citation_template }
      else
        format.html { render action: "new" }
        format.json { render json: @citation_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /citation_templates/1
  # PUT /citation_templates/1.json
  def update
    @citation_template = CitationTemplate.find(params[:id])

    respond_to do |format|
      if @citation_template.update_attributes(params[:citation_template])
        format.html { redirect_to @citation_template, notice: 'Citation template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @citation_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citation_templates/1
  # DELETE /citation_templates/1.json
  def destroy
    @citation_template = CitationTemplate.find(params[:id])
    @citation_template.destroy

    respond_to do |format|
      format.html { redirect_to citation_templates_url }
      format.json { head :no_content }
    end
  end
end
