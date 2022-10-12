#admins = data_bag('users')
group 'devops' do
    action :create
    append true
end
