# My Services SDK

Ruby SDK for myservices.com's API. 

## Usage
Install the gem.
```ruby
gem 'my-services'
```

Set the API Key.
```ruby
MyServices.api_key = API_KEY
```

## Workers
**Get**
```ruby
worker = MyServices::Worker.post(id)

## Error Handling
```ruby
begin
  # perform my services api requests
rescue AuthenticationError => e
  # API authentication issues
rescue ConnectionError => e
  # API connection Problems
rescue InvalidRequestError => e
  # Bad request/invalid request params
  # also if resource is not found
rescue MyServicesError => e
  # general error
end
