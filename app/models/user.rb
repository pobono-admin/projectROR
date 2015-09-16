class User < ActiveRecord::Base
	
	attr_accessor :remember_token, :activation_token
	before_create :create_activation_digest



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


  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end


	def User.new_token
	    SecureRandom.urlsafe_base64
	end


  # Activates an account.
  def activate
    update_attribute(:activated,    true)
    update_attribute(:activated_at, Time.zone.now)
  end

  # Sends activation email.
  def send_activation_email
    UserMailer.account_activation(self).deliver
  end


 private



    # Creates and assigns the activation token and digest.
    def create_activation_digest
      self.activation_token  = User.new_token
      self.activation_digest = User.digest(activation_token)
    end


end
