-- 1. Les clients.
insert into public.customers (full_name, email) values
  ('Camille Martin', 'camille@exemple.fr'),
  ('Karim Benali',   'karim@exemple.fr');

-- 2. Les véhicules, retrouvés par l'e-mail de leur propriétaire.
insert into public.vehicles (customer_id, plate, model) values
  ((select id from public.customers where email = 'camille@exemple.fr'), 'AA-123-BB', 'Clio 3'),
  ((select id from public.customers where email = 'karim@exemple.fr'),   'CC-456-DD', '208'),
  ((select id from public.customers where email = 'karim@exemple.fr'),   'EE-789-FF', 'Kangoo');
