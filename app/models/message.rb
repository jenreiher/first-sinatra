class Message < ActiveRecord::Base

  validate :url_contains_http

  def url_contains_http
    if url.start_with?('http://') || url.empty?
      true
    elsif 
      errors.add(:url, 'must start with http://')
    end
  end

end