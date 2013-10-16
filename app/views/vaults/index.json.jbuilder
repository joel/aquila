json.array!(@vaults) do |vault|
  json.extract! vault, :title, :subdomain
  json.url vault_url(vault, format: :json)
end
