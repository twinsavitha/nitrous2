FactoryGirl.define do
  factory :component do
    product 'SAP ECC'
    platform 'ABAP'
  end
  factory :quicksizer, class: QuickSizer do
    product 'SAP ECC'
    platform 'ABAP'
    saps '80000'
    memory '192'
    io '25000' 
    iops '30000'
    disksize '1000'
  end
end
