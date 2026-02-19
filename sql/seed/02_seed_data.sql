-- ============================================================
-- THE FINTECH SQL ANALYST
-- Seed Data: Direct load into wise_transfers
-- ============================================================

\COPY wise_transfers FROM '/tmp/wise_transfers.csv' WITH (FORMAT CSV, HEADER true);

SELECT 'Seed complete: ' || COUNT(*) || ' rows loaded' AS result FROM wise_transfers;
