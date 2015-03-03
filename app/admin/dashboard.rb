ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  sidebar :sidebar do
    "Add sidebar?"
  end
  
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Songs" do
          table_for Song.limit(5) do
            column :artist
            column :aiamm
            column :refid
            column "Description" do |song|
              truncate(song.description, omission: "...", length: 200, escape: false)
            end
          end
          strong { link_to "View All Songs", admin_songs_path }
        end
        panel "Recent Artists" do
          table_for Artist.limit(5) do
            column :name do |artist|
              link_to artist.name, [:admin, artist]
            end
            column "Description" do |artist|
              truncate(artist.biographical_note, omission: "...", length: 200, escape: false)
            end
          end
          strong { link_to "View All Artists", admin_artists_path }
        end
      end
    end
  end
end
