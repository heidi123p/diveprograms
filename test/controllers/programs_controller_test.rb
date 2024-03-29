require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post :create, program: { accomodation_included: @program.accomodation_included, cost: @program.cost, gear: @program.gear, minimum_length: @program.minimum_length, minimum_level: @program.minimum_level, program_description: @program.program_description, shop_id: @program.shop_id, website: @program.website }
    end

    assert_redirected_to program_path(assigns(:program))
  end

  test "should show program" do
    get :show, id: @program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program
    assert_response :success
  end

  test "should update program" do
    patch :update, id: @program, program: { accomodation_included: @program.accomodation_included, cost: @program.cost, gear: @program.gear, minimum_length: @program.minimum_length, minimum_level: @program.minimum_level, program_description: @program.program_description, shop_id: @program.shop_id, website: @program.website }
    assert_redirected_to program_path(assigns(:program))
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete :destroy, id: @program
    end

    assert_redirected_to programs_path
  end
end
