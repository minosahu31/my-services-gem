module MyServices
  class Worker < MyServicesObject
    include MyServices::Actions::Post

    def self.api_url
      'workers'
    end
  end
end

