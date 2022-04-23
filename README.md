# test_balanced

We have created a test project and deployed the backend infrastructure on AWS Amplify.

We have Shop and Order objects.
For Shop we can specify a name, timezone, workingWeekDays (List of int 0-Monday ... 6-Sunday), start and end of working hours.
The order should use 1h hour timeslot (but could use any time range on the backend). Need to show available timeslots (1h duration each) for each working day.

Please create a page that shows (design is not important):
Minimum:
- Name of the Shop (please use the first ShopModel from DB)
- Calendar with available dates for placing orders
- List of timeslots that are available to book when a user selects a date.
  Bonus:
- Create an order by selecting the available timeslot and inputting the client name.

ShopModel:
id: ID!
name: String
timeZone: String
workingWeekDays: [Int]
startTime: AWSTime
endTime: AWSTime
orders: [OrderModel]

OrderModel:
id: ID!
start: AWSDateTime
end: AWSDateTime
shopmodelID: ID! @index(name: "byShopModel")
clientName: String

Please use AWS DataStore