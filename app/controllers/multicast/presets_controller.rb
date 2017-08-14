class Multicast::PresetsController < ApplicationController
  before_action :set_multicast_preset, only: [:show, :edit, :update, :destroy]

  # GET /multicast/presets
  # GET /multicast/presets.json
  def index
    @multicast_presets = Multicast::Preset.all
  end

  # GET /multicast/presets/1
  # GET /multicast/presets/1.json
  def show
  end

  # GET /multicast/presets/new
  def new
    @multicast_preset = Multicast::Preset.new
  end

  # GET /multicast/presets/1/edit
  def edit
  end

  # POST /multicast/presets
  # POST /multicast/presets.json
  def create
    @multicast_preset = Multicast::Preset.new(multicast_preset_params)

    respond_to do |format|
      if @multicast_preset.save
        format.html { redirect_to @multicast_preset, notice: 'Preset was successfully created.' }
        format.json { render :show, status: :created, location: @multicast_preset }
      else
        format.html { render :new }
        format.json { render json: @multicast_preset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multicast/presets/1
  # PATCH/PUT /multicast/presets/1.json
  def update
    respond_to do |format|
      if @multicast_preset.update(multicast_preset_params)
        format.html { redirect_to @multicast_preset, notice: 'Preset was successfully updated.' }
        format.json { render :show, status: :ok, location: @multicast_preset }
      else
        format.html { render :edit }
        format.json { render json: @multicast_preset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multicast/presets/1
  # DELETE /multicast/presets/1.json
  def destroy
    @multicast_preset.destroy
    respond_to do |format|
      format.html { redirect_to multicast_presets_url, notice: 'Preset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multicast_preset
      @multicast_preset = Multicast::Preset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multicast_preset_params
      params.require(:multicast_preset).permit(:description, :from, :from_name, :reply_to, :preview_to, :subject, :body_template_id, :with_attachment, :attachment_template_id, :pdf_convertion, :pdf_with_password, :pdf_password_template, :cost_centre_id)
    end
end
