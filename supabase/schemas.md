# Shared Supabase schemas (txmnzia-dbs)

One Supabase project for every app, one Postgres schema per app. Logins are shared.
Every schema listed here must also be in Project Settings > Data API > Exposed schemas.

| Schema | Repo | Tables | Added |
|---|---|---|---|
| `public` | shared infra | `heartbeat` (keep-alive) | 2026-10-06 |
| `fogofwar` | [FogOfWar](https://github.com/txmnzia/FogOfWar) | `explored_cells`, `pins`, `settings` | 2026-10-06 |
