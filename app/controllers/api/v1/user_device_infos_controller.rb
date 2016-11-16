class Api::V1::UserDeviceInfosController < ApplicationController
  before_action :set_api_v1_user_device_info, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_device_infos
  # GET /api/v1/user_device_infos.json
  def index
    @api_v1_user_device_infos = Api::V1::UserDeviceInfo.all
  end

  # GET /api/v1/user_device_infos/1
  # GET /api/v1/user_device_infos/1.json
  def show
  end

  # GET /api/v1/user_device_infos/new
  def new
    @api_v1_user_device_info = Api::V1::UserDeviceInfo.new
  end

  # GET /api/v1/user_device_infos/1/edit
  def edit
  end

  # POST /api/v1/user_device_infos
  # POST /api/v1/user_device_infos.json
  def create
    @api_v1_user_device_info = Api::V1::UserDeviceInfo.new(api_v1_user_device_info_params)

    respond_to do |format|
      if @api_v1_user_device_info.save
        format.html { redirect_to @api_v1_user_device_info, notice: 'User device info was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_device_info }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_device_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_device_infos/1
  # PATCH/PUT /api/v1/user_device_infos/1.json
  def update
    respond_to do |format|
      if @api_v1_user_device_info.update(api_v1_user_device_info_params)
        format.html { redirect_to @api_v1_user_device_info, notice: 'User device info was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_device_info }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_device_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_device_infos/1
  # DELETE /api/v1/user_device_infos/1.json
  def destroy
    @api_v1_user_device_info.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_device_infos_url, notice: 'User device info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_device_info
      @api_v1_user_device_info = Api::V1::UserDeviceInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_device_info_params
      params.require(:api_v1_user_device_info).permit(:user_id, :os, :device_type, :device_model, :system_version, :app_version, :device_locale, :bundle_device)
    end
end
