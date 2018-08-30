Rails.application.routes.draw do
  namespace :api do 
    get "/name" => "games#name"
    get "/first_letter" => 'games#first_letter'
    get "/guessing" => 'games#guess'
  end
end
