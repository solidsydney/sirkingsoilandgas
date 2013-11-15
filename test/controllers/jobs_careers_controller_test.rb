require 'test_helper'

class JobsCareersControllerTest < ActionController::TestCase
  setup do
    @jobs_career = jobs_careers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs_careers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobs_career" do
    assert_difference('JobsCareer.count') do
      post :create, jobs_career: { contact_address: @jobs_career.contact_address, country: @jobs_career.country, date_of_birth: @jobs_career.date_of_birth, email: @jobs_career.email, first_name: @jobs_career.first_name, middle_name: @jobs_career.middle_name, portfolio_function: @jobs_career.portfolio_function, position_applied_for: @jobs_career.position_applied_for, prefix: @jobs_career.prefix, proposed_pay: @jobs_career.proposed_pay, qulification: @jobs_career.qulification, self_description: @jobs_career.self_description, sex: @jobs_career.sex, state: @jobs_career.state, surname: @jobs_career.surname }
    end

    assert_redirected_to jobs_career_path(assigns(:jobs_career))
  end

  test "should show jobs_career" do
    get :show, id: @jobs_career
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobs_career
    assert_response :success
  end

  test "should update jobs_career" do
    patch :update, id: @jobs_career, jobs_career: { contact_address: @jobs_career.contact_address, country: @jobs_career.country, date_of_birth: @jobs_career.date_of_birth, email: @jobs_career.email, first_name: @jobs_career.first_name, middle_name: @jobs_career.middle_name, portfolio_function: @jobs_career.portfolio_function, position_applied_for: @jobs_career.position_applied_for, prefix: @jobs_career.prefix, proposed_pay: @jobs_career.proposed_pay, qulification: @jobs_career.qulification, self_description: @jobs_career.self_description, sex: @jobs_career.sex, state: @jobs_career.state, surname: @jobs_career.surname }
    assert_redirected_to jobs_career_path(assigns(:jobs_career))
  end

  test "should destroy jobs_career" do
    assert_difference('JobsCareer.count', -1) do
      delete :destroy, id: @jobs_career
    end

    assert_redirected_to jobs_careers_path
  end
end
