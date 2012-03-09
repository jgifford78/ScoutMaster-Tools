class EquipmentCategoriesController < ApplicationController
  # GET /equipment_categories
  # GET /equipment_categories.json
  def index
    @equipment_categories = EquipmentCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipment_categories }
    end
  end

  # GET /equipment_categories/1
  # GET /equipment_categories/1.json
  def show
    @equipment_category = EquipmentCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipment_category }
    end
  end

  # GET /equipment_categories/new
  # GET /equipment_categories/new.json
  def new
    @equipment_category = EquipmentCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipment_category }
    end
  end

  # GET /equipment_categories/1/edit
  def edit
    @equipment_category = EquipmentCategory.find(params[:id])
  end

  # POST /equipment_categories
  # POST /equipment_categories.json
  def create
    @equipment_category = EquipmentCategory.new(params[:equipment_category])

    respond_to do |format|
      if @equipment_category.save
        format.html { redirect_to @equipment_category, notice: 'Equipment category was successfully created.' }
        format.json { render json: @equipment_category, status: :created, location: @equipment_category }
      else
        format.html { render action: "new" }
        format.json { render json: @equipment_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipment_categories/1
  # PUT /equipment_categories/1.json
  def update
    @equipment_category = EquipmentCategory.find(params[:id])

    respond_to do |format|
      if @equipment_category.update_attributes(params[:equipment_category])
        format.html { redirect_to @equipment_category, notice: 'Equipment category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipment_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_categories/1
  # DELETE /equipment_categories/1.json
  def destroy
    @equipment_category = EquipmentCategory.find(params[:id])
    @equipment_category.destroy

    respond_to do |format|
      format.html { redirect_to equipment_categories_url }
      format.json { head :ok }
    end
  end
end
