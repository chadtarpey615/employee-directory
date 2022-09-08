require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
    @employee = employees(:two)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    sign_in users(:two)
    visit employees_url
    click_on "Add employee"
    fill_in "Bio", with: @employee.bio
    fill_in "Email", with: @employee.email
    fill_in "Name", with: @employee.name
    click_on "Create Employee"
    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    sign_in users(:two)
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first
    fill_in "Bio", with: @employee.bio
    fill_in "Email", with: @employee.email
    fill_in "Name", with: @employee.name
    click_on "Update Employee"
    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    sign_in users(:two)
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first
    assert_text "Employee was successfully destroyed"
  end

  test "should search for employee" do 
    sign_in users(:two)
    visit employees_url
    fill_in "search", with: "Brandon"
    click_on "Search"
  end


  test "should click on next & prev for pagination" do 
    sign_in users(:one)
    visit employees_url
    click_on 'Next ›'
    click_on '‹ Prev'
  end

  test "user should log out successfully" do 
    sign_in users(:two)
    visit employees_url 
    click_on 'Logout'
    assert page.has_content? 'Signed out successfully.' 
  end

end

