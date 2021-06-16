-- SQL script to modify schemas
-- Altering customers
alter table customers
  rename column first to first_name;

alter table customers
  rename column last to last_name;

alter table customers
  alter column first_name type varchar(255),
  alter column last_name type varchar(255),
  alter column social type char(9),
  alter column account_number type char(14),
  alter column zip type char(5);

alter table customers
  add line_2 varchar(255),
  drop column current_balance_cents;

-- Altering statements
alter table statements
  alter column customer_id set not null;

alter table statements
  alter column gallons_used type decimal(65, 2);

alter table statements
  alter column status set default 'payment_due';