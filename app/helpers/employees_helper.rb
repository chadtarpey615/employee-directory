module EmployeesHelper
 def avatar_url(employee)
        puts "*" * 100
        puts employee.inspect
        puts "*" * 100
  gravatar_id = Digest::MD5::hexdigest(employee).downcase
  "http://gravatar.com/avatar/#{gravatar_id}.png"
 end
end


#  default_url = "#{root_url}images/guest.png"