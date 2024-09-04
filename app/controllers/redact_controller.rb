class RedactController < ApplicationController
	skip_before_action :verify_authenticity_token, only: :create
	
	def index
		render plain: 'Redaction Service'
	end

	def create
    text = params[:text] || request.raw_post
    redacted_text = redaction_service(text)
    render plain: redacted_text
  end

	private

	def redaction_service(text)
    words_to_redact = ["dog" ,"cat", "dolphin", "mammal", "snake"]
    words_to_redact.each do |word|
      text = text.gsub(/\b#{word}\b/i, "REDACTED")
    end
    text
  end
end
