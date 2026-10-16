-- Les véhicules. Un client a plusieurs véhicules : relation 1 → n.

create table public.vehicles (
  id          bigint generated always as identity primary key,
  customer_id bigint not null references public.customers (id) on delete cascade,
  plate       text not null unique,
  model       text
);

-- Une clé étrangère n'est pas indexée d'office.
create index on public.vehicles (customer_id);
