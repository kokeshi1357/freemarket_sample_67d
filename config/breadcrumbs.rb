crumb :root do
  link 'ホーム', root_path
end

crumb :mypage do
  link 'マイページ', user_path
  parent :root
end

crumb :categories do
  link 'カテゴリー一覧', categories_path
  parent :root
end

crumb :category do |category|
  link category.name, category_path
  parent :categories
end

crumb :mypage_card do
  link '支払い方法', confirmation_card_path
  parent :mypage
end

crumb :mypage_card_in do
  link 'カード情報入力'
  parent :mypage_card
end

crumb :user_sign_out do
  link "ログアウト", logout_user_path
  parent :mypage
end

crumb :product_listing do 
  link '商品出品'
  parent :root
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).