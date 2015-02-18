require 'csv'
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reminders

 def self.to_csv
    CSV.generate do |csv|
      csv << User.new.attributes.keys
      User.all.each do |user|
        csv << user.attributes.values
      end
    end
  end

end
