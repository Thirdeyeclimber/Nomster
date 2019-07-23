class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :place
	after_create :send_comment_email

	RATINGS = {
		'One star': '1_star',
		'Two stars': '2_stars',
		'Three stars': '3_stars',
		'Four stars': '4_stars',
		'Five stars': '5_stars'
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end

	def send_comment_email
			NotificationMailer.comment_added(self).deliver_now
	end

end
