class User < ActiveRecord::Base
	
	has_many :microposts, dependent: :destroy
	has_secure_password

	validates :name, 
          :presence => {:message => "can't be blank" },
          :length => { :maximum => 20, :message => "should less then 20 words"}

	validates :email, 
          :presence => {:message => "format is invalid" }


	 # validates :password, 
  #          :presence => {:message => "不可以空白" }


	# validates :password_confirmation, 
 #          :presence => {:message => "密碼不一致" }

end
