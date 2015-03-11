json.array!(@pessel_forms) do |pessel_form|
  json.extract! pessel_form, :id, :pessel
  json.url pessel_form_url(pessel_form, format: :json)
end
