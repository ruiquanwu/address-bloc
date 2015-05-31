require_relative "entry.rb"
require "csv"

class AddressBook
  attr_accessor :entries
  
  def initialize
    @entries = []
  end
  
   def add_entry(name, phone, email)
 # #7
     index = 0
     @entries.each do |entry|
 # #8    
       if name < entry.name
         break
       end
       index += 1
     end
 # #9
     @entries.insert(index, Entry.new(name, phone, email))
   end
  
  def remove_entry(entry_to_delete)
    entry_index = nil
    @entries.each_with_index do |entry, index|
      if entry.name == entry_to_delete.name &&
        entry.phone_number == entry_to_delete.phone_number &&
        entry.email == entry_to_delete.email
          entry_index = index
      end
    end
    if entry_index != nil
      @entries.delete(entry_index)
    end
    @entries
  end
  
  def import_from_csv(file_name)
     csv_text = File.read(file_name)
     csv = CSV.parse(csv_text, headers: true)
 # #8
     csv.each do |row|
       row_hash = row.to_hash
       add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
     end
 
     return csv.count
  end
  
end