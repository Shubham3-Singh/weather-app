class UserAuthenticate < ApplicationRecord

  validates :email,
            :presence => {:message => 'Please enter email'},
            :uniqueness => {:message => "Email already present"}

  validates :password,
            :presence => {:message => 'Please enter password'}
end
