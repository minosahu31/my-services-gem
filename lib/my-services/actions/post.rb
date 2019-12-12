module MyServices
  module Actions
    module Post
      module ClassMethods
        def load_category
          # api_url = "http://127.0.0.1:8080/billspayment/bill/categories"
          api_url = "#{self.api_url}"
          # response = MyServices.request(api_url, :post)
          response = JSON.parse('{
            "responseCode": "00",
            "message": "success",
            "data": [
              {
                "id": 3,
                "name": "State Government Collections"
              },
              {
                "id": 1,
                "name": "Utility Bills"
              },
              {
                "id": 5,
                "name": "Internet Services"
              },
              {
                "id": 41,
                "name": "Betting and Lottery"
              },
              {
                "id": 2,
                "name": "Cable TV Bills"
              },
              {
                "id": 12,
                "name": "Transport and Toll Payments"
              },
              {
                "id": 58,
                "name": "AZURI"
              }
            ]
          }')
        end
        def load_billers(id)
          # api_url = "http://127.0.0.1:8080/billspayment/bill/getbillers/4"
          api_url = "#{self.api_url}/#{id}"
          # response = MyServices.request(api_url, :post)
          response = JSON.parse('{
            "responseCode": "00",
            "message": "success",
            "data": [
              {
                "id": 3444,
                "billerId": "3444",
                "billerName": "Abia State",
                "sid": 3,
                "status": "A"
              },
              {
                "id": 913,
                "billerId": "913",
                "billerName": "GLO",
                "sid": 3,
                "status": "A"
              }
            ]
          }')
        end 
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end

