class CreateCitationTemplates < ActiveRecord::Migration
  def change
    create_table :citation_templates do |t|
      t.string :name
      t.string :domain
      t.string :pattern

      t.timestamps
    end
  end
end
