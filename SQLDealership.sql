
CREATE TABLE "Cars" (
  "Invoice" SERIAL,
  "Car" VARCHAR(100),
  "Salesperson" VARCHAR(100),
  "SVC_History" NUMERIC(10,0),
  PRIMARY KEY ("Car")
);

CREATE TABLE "Service" (
  "Mechanic" VARCHAR(100),
  "Car" VARCHAR(100),
  "SVC_History" numeric(10,0),
  "SVC_Ticket" VARCHAR(100),
  "Parts" VARCHAR(100),
  CONSTRAINT "FK_Service.Car"
    FOREIGN KEY ("Car")
      REFERENCES "Cars"("Car")
);

CREATE TABLE "Customer" (
  "Customer" VARCHAR(100),
  "Car" VARCHAR(100),
  "Invoice" SERIAL,
  "SVC_Ticket" VARCHAR(100),
  CONSTRAINT "FK_Customer.Car"
    FOREIGN KEY ("Car")
      REFERENCES "Cars"("Car")
);

CREATE TABLE "Sales" (
  "Salesperson" VARCHAR(100),
  "Invoice" SERIAL,
  "Car" VARCHAR(100),
  CONSTRAINT "FK_Sales.Car"
    FOREIGN KEY ("Car")
      REFERENCES "Cars"("Car")
);

create or replace function add_Salesperson("Salesperson" VARCHAR(100),"Invoice" SERIAL)
returns void
as $MAIN$
begin 
	insert into "Sales"("Salesperson", "Invoice")
	values (_"Salesperson",_"Invoice");
end;
$MAIN$
language plpgsql;

select add_Salesperson('Terry', 1);

select add_Salesperson('Phil', 2);