-- ============================================================
-- THE FINTECH SQL ANALYST
-- Schema: Wise International Transfers
-- ============================================================

DROP TABLE IF EXISTS wise_transfers;

CREATE TABLE wise_transfers (
    user_id                         VARCHAR(64),
    request_id                      VARCHAR(64) PRIMARY KEY,
    target_recipient_id             VARCHAR(64),
    date_user_created               TIMESTAMP,
    addr_country_code               CHAR(3),
    addr_city                       VARCHAR(100),
    recipient_country_code          CHAR(3),
    flag_personal_business          VARCHAR(20),
    payment_type                    VARCHAR(50),
    date_request_submitted          TIMESTAMP,
    date_request_received           TIMESTAMP,
    date_request_transferred        TIMESTAMP,
    date_request_cancelled          TIMESTAMP,
    invoice_value                   DECIMAL(15, 6),
    invoice_value_cancel            DECIMAL(15, 6),
    flag_transferred                SMALLINT,
    payment_status                  VARCHAR(30),
    ccy_send                        CHAR(3),
    ccy_target                      CHAR(3),
    transfer_to_self                VARCHAR(100),
    sending_bank_name               VARCHAR(150),
    sending_bank_country            CHAR(3),
    payment_reference_classification VARCHAR(50),
    device                          VARCHAR(50),
    transfer_sequence               INTEGER,
    days_since_previous_req         INTEGER,
    first_attempt_date              TIMESTAMP,
    first_success_date              TIMESTAMP
);

-- Useful index for filtering by status and date
CREATE INDEX idx_wise_status ON wise_transfers(payment_status);
CREATE INDEX idx_wise_submitted ON wise_transfers(date_request_submitted);
CREATE INDEX idx_wise_ccy ON wise_transfers(ccy_send, ccy_target);
CREATE INDEX idx_wise_user ON wise_transfers(user_id);

COMMENT ON TABLE wise_transfers IS 'Wise international transfer records — used throughout the Fintech SQL Analyst course';
COMMENT ON COLUMN wise_transfers.transfer_sequence IS 'The Nth transfer this user has made — 1 = first ever transfer';
COMMENT ON COLUMN wise_transfers.transfer_to_self IS 'Indicates if sender and recipient appear to be the same person';
COMMENT ON COLUMN wise_transfers.payment_reference_classification IS 'Inferred purpose of the transfer: rent, gift, invoice, savings, etc.';
