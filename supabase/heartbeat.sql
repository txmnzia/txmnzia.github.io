-- Shared Supabase project: keep-alive table.
-- The supabase-keepalive workflow selects from it every 3 days so the
-- free-tier project never pauses. Run once in the SQL editor. Safe to re-run.

create table if not exists public.heartbeat (id int primary key);
insert into public.heartbeat (id) values (1) on conflict do nothing;

alter table public.heartbeat enable row level security;
drop policy if exists "anon read" on public.heartbeat;
create policy "anon read" on public.heartbeat for select to anon using (true);
grant select on public.heartbeat to anon;
