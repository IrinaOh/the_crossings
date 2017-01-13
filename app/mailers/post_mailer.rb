class PostMailer < ApplicationMailer
	default from: 'irina.v.ohara@gmail.com'
  	layout 'contact_us'
  	def contact_us(post)
  		@post = post
  		mail(
  			to: "irina.v.ohara@gmail.com", 
  			subject: 'New Message from The Crossings Contact Us page', 
  			body: %Q(The following message is from: #{@post.first_name} #{@post.last_name}
  				#{@post.message}
  				Contact Information:
  				Phone: #{@post.phone} 
  				Email: #{@post.email}) 			
  			) 	
  	end
end
