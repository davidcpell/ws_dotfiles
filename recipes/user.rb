search(:users, "id:*").each do |user|
  name = user['id']
  home = "/home/#{name}"

  user name do 
    shell user['shell']
    home  home
  end

  directory home do 
    user  name
    mode  '0755'
  end
end
