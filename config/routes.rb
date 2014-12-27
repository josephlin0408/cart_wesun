Rails.application.routes.draw do
  devise_for :users
  # 所有前端視覺會用到的就放在themes中, 比較好管理.
  scope module: 'themes', :as => 'themes' do
    root 'pages#index'
  end
  # erp管理
  namespace :erp do
    root 'pages#index'
  end
  # 網站管理
  namespace :admin do
    root 'pages#index'
  end
end
