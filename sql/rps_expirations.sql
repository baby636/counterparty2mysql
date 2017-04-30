DROP TABLE IF EXISTS rps_expirations;
CREATE TABLE rps_expirations (
    row_index   INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rps_index     INTEGER UNSIGNED,
    -- rps_hash      TEXT,
    rps_hash_id   INTEGER UNSIGNED, -- id of record in transactions
    -- source        TEXT,
    source_id     INTEGER UNSIGNED, -- id of record in addresses
    block_index   INTEGER UNSIGNED
) ENGINE=MyISAM;

CREATE INDEX block_index   ON rps_expirations (block_index);
CREATE INDEX rps_hash_id   ON rps_expirations (rps_hash_id);
CREATE INDEX source_id     ON rps_expirations (source_id);
