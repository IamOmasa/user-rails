class User < ApplicationRecord
    
end

class User < ActiveRecord::Base
default_scope { order(last_name: :asc, member: true)}
end


