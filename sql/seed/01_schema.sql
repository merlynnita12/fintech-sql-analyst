-- ============================================================
-- THE FINTECH SQL ANALYST
-- Schema: Wise Transfers (learning environment — flexible types)
-- ============================================================

DROP TABLE IF EXISTS wise_transfers;

CREATE TABLE wise_transfers (
    user_id                          TEXT,
    request_id                       TEXT,
    target_recipient_id              TEXT,
    date_user_created                TEXT,
    addr_country_code                TEXT,
    addr_city                        TEXT,
    recipient_country_code           TEXT,
    flag_personal_business           TEXT,
    payment_type                     TEXT,
    date_request_submitted           TEXT,
    date_request_received            TEXT,
    date_request_transferred         TEXT,
    date_request_cancelled           TEXT,
    invoice_value                    TEXT,
    invoice_value_cancel             TEXT,
    flag_transferred                 TEXT,
    payment_status                   TEXT,
    ccy_send                         TEXT,
    ccy_target                       TEXT,
    transfer_to_self                 TEXT,
    sending_bank_name                TEXT,
    sending_bank_country             TEXT,
    payment_reference_classification TEXT,
    device                           TEXT,
    transfer_sequence                TEXT,
    days_since_previous_req          TEXT,
    first_attempt_date               TEXT,
    first_success_date               TEXT
);

COMMENT ON TABLE wise_transfers IS 'Wise international transfer records — Fintech SQL Analyst course';
