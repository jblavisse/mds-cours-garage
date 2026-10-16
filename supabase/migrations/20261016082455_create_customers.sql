-- Les clients du garage.

create table public.customers (
  id         bigint generated always as identity primary key,
  full_name  text not null,
  email      text not null unique,
  created_at timestamptz not null default now()
);
