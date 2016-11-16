require 'test_helper'

class Api::V1::UserDeviceInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_user_device_info = api_v1_user_device_infos(:one)
  end

  test "should get index" do
    get api_v1_user_device_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_user_device_info_url
    assert_response :success
  end

  test "should create api_v1_user_device_info" do
    assert_difference('Api::V1::UserDeviceInfo.count') do
      post api_v1_user_device_infos_url, params: { api_v1_user_device_info: { app_version: @api_v1_user_device_info.app_version, bundle_device: @api_v1_user_device_info.bundle_device, device_locale: @api_v1_user_device_info.device_locale, device_model: @api_v1_user_device_info.device_model, device_type: @api_v1_user_device_info.device_type, os: @api_v1_user_device_info.os, system_version: @api_v1_user_device_info.system_version, user_id: @api_v1_user_device_info.user_id } }
    end

    assert_redirected_to api_v1_user_device_info_url(Api::V1::UserDeviceInfo.last)
  end

  test "should show api_v1_user_device_info" do
    get api_v1_user_device_info_url(@api_v1_user_device_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_user_device_info_url(@api_v1_user_device_info)
    assert_response :success
  end

  test "should update api_v1_user_device_info" do
    patch api_v1_user_device_info_url(@api_v1_user_device_info), params: { api_v1_user_device_info: { app_version: @api_v1_user_device_info.app_version, bundle_device: @api_v1_user_device_info.bundle_device, device_locale: @api_v1_user_device_info.device_locale, device_model: @api_v1_user_device_info.device_model, device_type: @api_v1_user_device_info.device_type, os: @api_v1_user_device_info.os, system_version: @api_v1_user_device_info.system_version, user_id: @api_v1_user_device_info.user_id } }
    assert_redirected_to api_v1_user_device_info_url(@api_v1_user_device_info)
  end

  test "should destroy api_v1_user_device_info" do
    assert_difference('Api::V1::UserDeviceInfo.count', -1) do
      delete api_v1_user_device_info_url(@api_v1_user_device_info)
    end

    assert_redirected_to api_v1_user_device_infos_url
  end
end
