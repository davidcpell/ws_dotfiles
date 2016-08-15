search(:users, "id:*").each do |user|
  name = user['id']

  user name do 
    shell user['shell']
    home  "/home/#{name}"
  end
end
