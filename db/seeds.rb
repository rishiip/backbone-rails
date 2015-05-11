
MyModelMyAttribute.destroy_all

MyModel.destroy_all
m1 = MyModel.create(model_number: "Bacancy-1001", description: "First test model for Bacancy Technologies Limited")
m2 = MyModel.create(model_number: "Bacancy-1002", description: "Second test model for Bacancy Technologies Limited")

MyAttribute.destroy_all
a1 = MyAttribute.create(name: "Created By", section_name: "Team", attribute_type: "text", display_type: "text", display_size: "20", display_label: "Created By", display_seq: 1)
a2 = MyAttribute.create(name: "Approved By", section_name: "Team", attribute_type: "text", display_type: "text", display_size: "20", display_label: "Approved By", display_seq: 2)
a3 = MyAttribute.create(name: "Color", section_name: "Attribute", attribute_type: "text", display_type: "text", display_size: "20", display_label: "Color", display_seq: 1)
a4 = MyAttribute.create(name: "Weight", section_name: "Attribute", attribute_type: "text", display_type: "text", display_size: "20", display_label: "Weight", display_seq: 2)
a5 = MyAttribute.create(name: "Type", section_name: "Attribute", attribute_type: "text", display_type: "text", display_size: "20", display_label: "Type", display_seq: 3)
a6 = MyAttribute.create(name: "Short Description", section_name: "Model Description", attribute_type: "text", display_type: "text", display_size: "20", display_label: "Short Description", display_seq: 1)
a7 = MyAttribute.create(name: "Full Description", section_name: "Model Description", attribute_type: "text", display_type: "textarea", display_size: "20", display_label: "Full Description", display_seq: 2)

MyModelMyAttribute.create(my_model: m1,  my_attribute: a1, value: "Mr. Rishi Pithadiya")
MyModelMyAttribute.create(my_model: m1,  my_attribute: a2, value: "Mr. Chandresh Patel")
MyModelMyAttribute.create(my_model: m1,  my_attribute: a3, value: "Green")
MyModelMyAttribute.create(my_model: m1,  my_attribute: a4, value: "70")
MyModelMyAttribute.create(my_model: m1,  my_attribute: a5, value: "Prototype")
MyModelMyAttribute.create(my_model: m1,  my_attribute: a6, value: "First Prototype Model")
MyModelMyAttribute.create(my_model: m1,  my_attribute: a7, value: "<p>A model for Bacancy technology, under developing phase and will be released by June, 2015</p>")