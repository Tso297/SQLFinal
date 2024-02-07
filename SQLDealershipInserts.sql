insert into "Cars" (
"Invoice",
"Car",
"Salesperson",
"SVC_History"
) values (
1,
'Monster Truck',
'Edward',
1
)

insert into "Cars" (
"Invoice",
"Car",
"Salesperson",
"SVC_History"
) values (
2,
'Limo',
'Enrique',
2
)

insert into "Service" (
"Mechanic",
"SVC_History",
"SVC_Ticket",
"Parts"
) values (
'Frank',
1,
1,
'Flux Capacitor')

insert into "Service" (
"Mechanic",
"SVC_History",
"SVC_Ticket",
"Parts"
) values (
'Ed',
2,
2,
'Hydraulic System')

insert into "Customer" (
"Customer",
"Invoice",
"SVC_Ticket"
) values (
'Albert',
1,
1)

insert into "Customer" (
"Customer",
"Invoice",
"SVC_Ticket"
) values (
'Roger',
2,
2)

insert into "Sales" (
"Salesperson",
"Invoice"
) values (
'Edward',
1
)

insert into "Sales" (
"Salesperson",
"Invoice"
) values (
'Enrique',
2
)