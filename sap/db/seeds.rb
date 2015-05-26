# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Component.delete_all
QuickSizer.delete_all
Component.create!([
  {id: 1, product: "SAP ECC", platform: "ABAP",servername:"Application Server"},
  {id: 2, product: "SAP ECC", platform: "ABAP",servername:"Database Server"},
  {id: 3, product: "SAP ECC", platform: "ABAP",servername:"SCS Server"},
  {id: 4, product: "Trex", platform: "STANDALONE",servername:"Standalone Trex Server"},
  {id: 5, product: "NetWeaver", platform: "JAVA",servername:"Application Server"},
  {id: 6, product: "NetWeaver", platform: "JAVA",servername:"Database Server"},
  {id: 7, product: "NetWeaver", platform: "JAVA",servername:"SCS Server"},
  {id: 8, product: "NetWeaver", platform: "JAVA",servername:"Web Dispatcher Server"},
  {id: 9, product: "Solution Manager", platform: "STANDALONE",servername:"Standalone SOLMAN Server"},
  {id: 10, product: "Solution Manager", platform: "ABAP+JAVA",servername:"Application Server"},
  {id: 11, product: "Solution Manager", platform: "ABAP+JAVA",servername:"Database Server"},
  {id: 12, product: "Solution Manager", platform: "ABAP+JAVA",servername:"SCS Server"},
  {id: 13, product: "Solution Manager", platform: "ABAP+JAVA",servername:"Web Dispatcher Server"},
  {id: 14, product: "Process Integration", platform: "ABAP+JAVA",servername:"Application Server"},
  {id: 15, product: "Process Integration", platform: "ABAP+JAVA",servername:"Database Server"},
  {id: 16, product: "Process Integration", platform: "ABAP+JAVA",servername:"SCS Server"},
  {id: 17, product: "Process Integration", platform: "ABAP+JAVA",servername:"Web Dispatcher Server"},
  {id: 18, product: "Business Intelligence", platform: "ABAP",servername:"Application Server"},
  {id: 19, product: "Business Intelligence", platform: "ABAP",servername:"Database Server"},
  {id: 20, product: "Business Intelligence", platform: "ABAP",servername:"SCS Server"},
  {id: 21, product: "Business Intelligence", platform: "JAVA",servername:"Application Server"},
  {id: 22, product: "Business Intelligence", platform: "JAVA",servername:"Database Server"},
  {id: 23, product: "Business Intelligence", platform: "JAVA",servername:"SCS Server"},
  {id: 24, product: "Business Intelligence", platform: "JAVA",servername:"Web Dispatcher Server"},
  {id: 25, product: "Business Object", platform: "BO Platform",servername:"WebApp BO Server"},
  {id: 26, product: "Business Object", platform: "BO Platform",servername:"Integration BO Server"},
  {id: 27, product: "Business Object", platform: "BO Platform",servername:"Processing BO Server"},
  {id: 28, product: "Business Object", platform: "BO Platform",servername:"Database BO Server"},
  {id: 29, product: "SAP SUP", platform: "STANDALONE",servername:"Standalone SUP Server"},
  {id: 30, product: "SAP CRM", platform: "ABAP",servername:"Application Server"},
  {id: 31, product: "SAP CRM", platform: "ABAP",servername:"Database Server"},
  {id: 32, product: "SAP CRM", platform: "ABAP",servername:"SCS Server"},
  {id: 33, product: "SAP CRM", platform: "JAVA",servername:"Application Server"},
  {id: 34, product: "SAP CRM", platform: "JAVA",servername:"Database Server"},
  {id: 35, product: "SAP CRM", platform: "JAVA",servername:"SCS Server"},
  {id: 36, product: "SAP CRM", platform: "JAVA",servername:"Web Dispatcher Server"},
  {id: 37, product: "SAP SRM", platform: "ABAP",servername:"Application Server"},
  {id: 38, product: "SAP SRM", platform: "ABAP",servername:"Database Server"},
  {id: 39, product: "SAP SRM", platform: "ABAP",servername:"SCS Server"},
  {id: 40, product: "SAP SRM", platform: "JAVA",servername:"Application Server"},
  {id: 41, product: "SAP SRM", platform: "JAVA",servername:"Database Server"},
  {id: 42, product: "SAP SRM", platform: "JAVA",servername:"SCS Server"},
  {id: 43, product: "SAP SRM", platform: "JAVA",servername:"Web Dispatcher Server"},
  {id: 44, product: "SAP SCM", platform: "ABAP",servername:"Application Server"},
  {id: 45, product: "SAP SCM", platform: "ABAP",servername:"Database Server"},
  {id: 46, product: "SAP SCM", platform: "ABAP",servername:"SCS Server"},
  {id: 47, product: "SCM Live Cache", platform: "STANDALONE",servername:"Standalone LC Server"},
  {id: 48, product: "BPC for BI", platform: "STANDALONE",servername:"Standalone BPC Server"},
  {id: 49, product: "SAP Content Server", platform: "STANDALONE",servername:"Standalone SCS Server"},
])
QuickSizer.create!([
  {id: 1, product: "SAP ECC", platform: "ABAP", saps: 80000, memory: 192, io: 25000, iops: 30000, disksize: 1000},
  {id: 2, product: "SAP Content Server", platform: "STANDALONE", saps: 8000, memory: 32, io: 4000, iops: 5000, disksize: 500},
  {id: 3, product: "NetWeaver", platform: "JAVA", saps: 30000, memory: 96, io: 8000, iops: 9000, disksize: 300},
  {id: 4, product: "Solution Manager", platform: "ABAP+JAVA", saps: 1000, memory: 16, io: 1000, iops: 1200, disksize: 300},
  {id: 5, product: "Process Integration", platform: "ABAP+JAVA", saps: 8000, memory: 32, io: 4000, iops: 5000, disksize: 500},
  {id: 6, product: "SAP SUP", platform: "STANDALONE", saps: 3000, memory: 32, io: 4000, iops: 5000, disksize: 300},
  {id: 7, product: "SAP SCM", platform: "ABAP", saps: 5000, memory: 24, io: 4000, iops: 5000, disksize: 400},
  {id: 8, product: "SCM Live Cache", platform: "STANDALONE", saps: 1000, memory: 16, io: 1000, iops: 1200, disksize: 300}
])