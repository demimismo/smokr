Smokr::Application.routes.draw do
  scope "api" do
    resources :test_cases
  end
  root to: "main#index"
  match '*path', to: 'main#index'
end
