require 'test_helper'

class Api::V1::ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_reservation = api_v1_reservations(:one)
  end

  test 'should get index' do
    get api_v1_reservations_url, as: :json
    assert_response :success
  end

  test 'should show api_v1_reservation' do
    get api_v1_reservation_url(@api_v1_reservation), as: :json
    assert_response :success
  end

  test 'should destroy api_v1_reservation' do
    assert_difference('Api::V1::Reservation.count', -1) do
      delete api_v1_reservation_url(@api_v1_reservation), as: :json
    end

    assert_response :no_content
  end
end
