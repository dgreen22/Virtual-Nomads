class CreateProspects < ActiveRecord::Migration[5.0]
  def change
    create_table :prospects do |t|

    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :phone
    	t.string :mailing_address
    	t.string :question_1
    	t.string :question_2

      t.timestamps
    end
  end
end
