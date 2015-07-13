defmodule PhoenixMultipleSelect.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :string
      add :tags, :string

      timestamps
    end

  end
end
