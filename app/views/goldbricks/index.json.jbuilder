json.array!(@goldbricks) do |goldbrick|
  json.extract! goldbrick, :name, :login, :password, :content
  json.url goldbrick_url(goldbrick, format: :json)
end
