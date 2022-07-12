class User < ActiveRecord::Base
	has_many :articles
	validates:username, presence:true, uniqueness: { case_sensitive: false }, length:{minimum:6, maximum:100}
	
	validates:email, :presence => true, uniqueness: { case_sensitive: false },
            :format => {:with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                        :message => 'is invalid'}
end
