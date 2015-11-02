class User < ActiveRecord::Base
	has_many :events
	has_many :assignments
	has_many :roles, through: :assignments
	has_many :organizations, through: :assignments

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.screen_name = auth['info']['nickname']
      user.name = auth['info']['name']
    end
  end
end
