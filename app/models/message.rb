class Message < ActiveRecord::Base

  validate :url_contains_http

  def url_contains_http
    if url.nil? || url.start_with?('http://')
      true
    elsif 
        errors.add(:url, 'URL must start with http://')
    end
  end

end