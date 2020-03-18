use Mix.Config

if Mix.env() == :test do
  config :elixir_auth_google, httpoison: ElixirAuthGoogle.HTTPoison.InMemory
end

config :elixir_auth_google, :google_credentials,
  google_client_id: System.get_env("GOOGLE_CLIENT_ID"),
  google_client_secret: System.get_env("GOOGLE_CLIENT_SECRET")
