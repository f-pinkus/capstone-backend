Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "localhost:5173",
    "localhost:4173", "https://biteshare1.netlify.app"
    resource "*",
      headers: :any,
      methods: [:get, :post, :delete, :patch, :put, :options],
      credentials: true
  end
end 