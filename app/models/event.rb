class Event < ActiveRecord::Base
	# 
	# validates_presence_of :name
	# 名字必填

	# <% if event.editable_by?(current_user) %>
 #        <%= link_to("Edit", edit_group_path(event), class: "btn btn-sm btn-default")%>
 #        <%= link_to("Delete", group_path(event),class: "btn btn-sm btn-default", method: :delete, data: { confirm: "Are you sure?" } )%>
 #    <% end %>

 # validates :title, presence: true
 
  # has_many :user
# 設定 user 跟 event 之間的資料庫關聯 ( database relationship )
 # belongs_to :owner, class_name: "User", foreign_key: :user_id
end
