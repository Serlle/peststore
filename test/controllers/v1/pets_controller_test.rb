require "test_helper"

class V1::PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v1_pet = v1_pets(:one)
  end

  test "should get index" do
    get v1_pets_url, as: :json
    assert_response :success
  end

  test "should create v1_pet" do
    assert_difference("V1::Pet.count") do
      post v1_pets_url, params: {v1_pet: {}}, as: :json
    end

    assert_response 201
  end

  test "should show v1_pet" do
    get v1_pet_url(@v1_pet), as: :json
    assert_response :success
  end

  test "should update v1_pet" do
    patch v1_pet_url(@v1_pet), params: {v1_pet: {}}, as: :json
    assert_response 200
  end

  test "should destroy v1_pet" do
    assert_difference("V1::Pet.count", -1) do
      delete v1_pet_url(@v1_pet), as: :json
    end

    assert_response 204
  end
end
