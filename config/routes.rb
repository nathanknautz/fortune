Rails.application.routes.draw do
  get "/fortune_url" => "pages#fortune_method"
  get "/lotto_url" => 'pages#lotto_method'
  get "/traffic_url" => 'pages#traffic_method'
  get "/beer_url" => 'pages#bottles_of_beer_method'

end
