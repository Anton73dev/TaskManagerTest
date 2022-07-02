FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :avatar, :name, :description, :expired_at] do |n|
    "string-#{n}"
  end
  sequence :email do |n|
    "person#{n}@example.com"
  end
  sequence :state do |_n|
    'new_task'
  end
end
