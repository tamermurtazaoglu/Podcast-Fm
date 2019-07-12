class AddAttachmentMp3ToEpisodes < ActiveRecord::Migration[5.2]
  def self.up
    change_table :episodes do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :episodes, :mp3
  end
end
