Rails.application.routes.draw do
  # department param can ends with dot (.), so we need to add a constraint using regexp
  get '/departments/:department/fix', to: 'departments#fix', constraints: { department: /.*\.?/ }
end
