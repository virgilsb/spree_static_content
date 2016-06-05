class AddTranslationToStaticPages < ActiveRecord::Migration
  def up
    params = { title: :string, body: :text, slug: :string, layout: :string, foreign_link: :string, meta_keywords: :string, meta_title: :string, meta_description: :string }
    I18n.default_locale = :ro
    Spree::Page.create_translation_table!(params, { migrate_data: true })
  end
  
  def down
    Spree::Page.drop_translation_table! migrate_data: true
  end
end
