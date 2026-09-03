-- Planet Sound — enable the per-sound "let others download" feature.
-- Run this once in the Supabase SQL editor. Safe to run more than once.

alter table public.sounds
  add column if not exists allow_download boolean not null default false;

-- (Optional) if you use row-level security and want the flag to be
-- publicly readable alongside the rest of a sound, no extra policy is
-- needed — it rides on the existing SELECT policy for the sounds table.
