module EmployeesHelper
 def avatar_url(employee)
  if employee.present?
   gravatar_id = Digest::MD5::hexdigest(employee).downcase
   "http://gravatar.com/avatar/#{gravatar_id}.png"
  else 
   "http://gravatar.com/avatar/images/guest.png" 
 end
end
end
