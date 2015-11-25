### These are the option types
room = Spree::OptionType.find_by_name!("home_room")
plan = Spree::OptionType.find_by_name!("home_plan")

### This is the data
option_values = [
  {:name => "room-standard", :presentation => "Standard", :option_type => room},
  {:name => "room-superior", :presentation => "Superior", :option_type => room},
  {:name => "plan-on-demand", :presentation => "On Demand", :option_type => plan}
]

### Creating Option Values
option_values.each do |ov|
  Spree::OptionValue.create(ov)
end
