require 'test_helper'

class DevelopersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @developer = developers(:one)
  end

  test 'should get index' do
    get developers_url, as: :json
    assert_response :success
  end

  test 'should create developer' do
    assert_difference('Developer.count') do
      post developers_url,
           params: { developer: {
             description: @developer.description,
             image: @developer.image,
             name: @developer.name,
             rating: @developer.rating,
             salary_exp: @developer.salary_exp,
             title: @developer.title,
             user_id: @developer.user_id
           } }, as: :json
    end

    assert_response :created
  end

  test 'should show developer' do
    get developer_url(@developer), as: :json
    assert_response :success
  end

  test 'should update developer' do
    patch developer_url(@developer),
          params: { developer: {
            description: @developer.description,
            image: @developer.image,
            name: @developer.name,
            rating: @developer.rating,
            salary_exp: @developer.salary_exp,
            title: @developer.title,
            user_id: @developer.user_id
          } }, as: :json
    assert_response :success
  end

  test 'should destroy developer' do
    assert_difference('Developer.count', -1) do
      delete developer_url(@developer), as: :json
    end

    assert_response :no_content
  end
end
