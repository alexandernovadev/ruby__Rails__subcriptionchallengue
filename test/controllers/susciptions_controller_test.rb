require "test_helper"

class SusciptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @susciption = susciptions(:one)
    @susciptionewell = susciptions(:well)
  end

  test "should get index" do
    get susciptions_url
    assert_response :success
  end

  test "should get new" do
    get new_susciption_url
    assert_response :success
  end

  test "should not create susciption " do
      post susciptions_url, params: { 
        susciption: { email: @susciption.email, 
        isChildren: @susciption.isChildren,
        isMen: @susciption.isMen,
        isWomen: @susciption.isWomen }
      }
    
    assert_response :unprocessable_entity
  end

  test "should create retirn ok " do
    post susciptions_url, params: { 
      susciption: { email: @susciptionewell.email, 
      isChildren: @susciptionewell.isChildren,
      isMen: @susciptionewell.isMen,
      isWomen: @susciptionewell.isWomen }
    }
    
   assert_response :created
  end

  # test "should show susciption" do
  #   get susciption_url(@susciption)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_susciption_url(@susciption)
  #   assert_response :success
  # end

  # test "should update susciption" do
  #   patch susciption_url(@susciption), params: { susciption: { email: @susciption.email, isChildren: @susciption.isChildren, isMen: @susciption.isMen, isWomen: @susciption.isWomen } }
  #   assert_redirected_to susciption_url(@susciption)
  # end

  # test "should destroy susciption" do
  #   assert_difference("Susciption.count", -1) do
  #     delete susciption_url(@susciption)
  #   end

  #   assert_redirected_to susciptions_url
  # end
end
