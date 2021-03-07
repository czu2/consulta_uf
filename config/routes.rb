Rails.application.routes.draw do
  get 'uf/:date', to: 'api/ufs#search_date'
  get 'client/:name', to: 'api/clients#find_client'
end
