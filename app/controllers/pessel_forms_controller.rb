class PesselFormsController < ApplicationController
  before_action :set_pessel_form, only: [:show, :edit, :update, :destroy]

  # GET /pessel_forms
  # GET /pessel_forms.json
  def index
    @pessel_forms = PesselForm.all
  end

  # GET /pessel_forms/1
  # GET /pessel_forms/1.json
  def show
  end

  # GET /pessel_forms/new
  def new
    @pessel_form = PesselForm.new
  end

  # GET /pessel_forms/1/edit
  def edit
  end

  # POST /pessel_forms
  # POST /pessel_forms.json
  def create
    @pessel_form = PesselForm.new(pessel_form_params)

    respond_to do |format|
      if @pessel_form.save
        format.html { redirect_to @pessel_form, notice: 'Pessel form was successfully created.' }
        format.json { render :show, status: :created, location: @pessel_form }
      else
        format.html { render :new }
        format.json { render json: @pessel_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessel_forms/1
  # PATCH/PUT /pessel_forms/1.json
  def update
    respond_to do |format|
      if @pessel_form.update(pessel_form_params)
        format.html { redirect_to @pessel_form, notice: 'Pessel form was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessel_form }
      else
        format.html { render :edit }
        format.json { render json: @pessel_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessel_forms/1
  # DELETE /pessel_forms/1.json
  def destroy
    @pessel_form.destroy
    respond_to do |format|
      format.html { redirect_to pessel_forms_url, notice: 'Pessel form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessel_form
      @pessel_form = PesselForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessel_form_params
      params.require(:pessel_form).permit(:pessel)
    end
end
