require "application_system_test_case"

class EmployeeDetailsTest < ApplicationSystemTestCase
  setup do
    @employee_detail = employee_details(:one)
  end

  test "visiting the index" do
    visit employee_details_url
    assert_selector "h1", text: "Employee Details"
  end

  test "creating a Employee detail" do
    visit employee_details_url
    click_on "New Employee Detail"

    fill_in "Emp designation", with: @employee_detail.emp_Designation
    fill_in "Emp", with: @employee_detail.emp_id
    fill_in "Emp mail", with: @employee_detail.emp_mail_id
    fill_in "First name", with: @employee_detail.first_name
    fill_in "Last name", with: @employee_detail.last_name
    click_on "Create Employee detail"

    assert_text "Employee detail was successfully created"
    click_on "Back"
  end

  test "updating a Employee detail" do
    visit employee_details_url
    click_on "Edit", match: :first

    fill_in "Emp designation", with: @employee_detail.emp_Designation
    fill_in "Emp", with: @employee_detail.emp_id
    fill_in "Emp mail", with: @employee_detail.emp_mail_id
    fill_in "First name", with: @employee_detail.first_name
    fill_in "Last name", with: @employee_detail.last_name
    click_on "Update Employee detail"

    assert_text "Employee detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee detail" do
    visit employee_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee detail was successfully destroyed"
  end
end
