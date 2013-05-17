Rails.application.routes.draw do

  post "javascript-errors", to: "raise_js/javascript_errors#create"

end
