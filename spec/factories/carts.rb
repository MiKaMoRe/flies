FactoryBot.define do
  factory :cart do
    is_order { false }
    user
  end
end
