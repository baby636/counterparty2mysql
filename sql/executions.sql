DROP TABLE IF EXISTS executions;
CREATE TABLE executions (
    row_index    INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tx_index     INTEGER UNSIGNED,
    -- tx_hash   TEXT,
    tx_hash_id   INTEGER UNSIGNED, -- id of record in transactions
    block_index  INTEGER,
    -- source    TEXT,
    source_id    INTEGER UNSIGNED, -- id of record in addresses
    contract_id  INTEGER UNSIGNED, -- id of record in contract_ids
    gas_price    INTEGER UNSIGNED,
    gas_start    INTEGER UNSIGNED,
    gas_cost     INTEGER UNSIGNED,
    gas_remained INTEGER UNSIGNED,
    value        INTEGER UNSIGNED,
    data         BLOB,
    output       BLOB,
    status       TEXT
) ENGINE=MyISAM;

CREATE INDEX block_index ON executions (block_index);
CREATE INDEX source_id   ON executions (source_id);
CREATE INDEX tx_hash_id  ON executions (tx_hash_id);
CREATE INDEX contract_id ON executions (contract_id);

