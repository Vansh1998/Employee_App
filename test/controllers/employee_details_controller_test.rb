require "test_helper"

class EmployeeDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_detail = employee_details(:one)
  end

  test "should get index" do
    get employee_details_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_detail_url
    assert_response :success
  end

  test "should create employee_detail" do
    assert_difference('EmployeeDetail.count') do
      post employee_details_url, params: { employee_detail: { emp_Designation: @employee_detail.emp_Designation, emp_id: @employee_detail.emp_id, emp_mail_id: @employee_detail.emp_mail_id, first_name: @employee_detail.first_name, last_name: @employee_detail.last_name } }
    end

    assert_redirected_to employee_detail_url(EmployeeDetail.last)
  end

  test "should show employee_detail" do
    get employee_detail_url(@employee_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_detail_url(@employee_detail)
    assert_response :success
  end

  test "should update employee_detail" do
    patch employee_detail_url(@employee_detail), params: { employee_detail: { emp_Designation: @employee_detail.emp_Designation, emp_id: @employee_detail.emp_id, emp_mail_id: @employee_detail.emp_mail_id, first_name: @employee_detail.first_name, last_name: @employee_detail.last_name } }
    assert_redirected_to employee_detail_url(@employee_detail)
  end

  test "should destroy employee_detail" do
    assert_difference('EmployeeDetail.count', -1) do
      delete employee_detail_url(@employee_detail)
    end

    assert_redirected_to employee_details_url
  end
end
