DROP TABLE IF EXISTS blocks;
CREATE TABLE blocks (
    id                     INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    block_index            INTEGER UNSIGNED,
    block_time             INTEGER UNSIGNED,
    -- block_hash             TEXT,
    block_hash_id          INTEGER UNSIGNED,     -- id of record in Transactions table
    -- previous_block_hash    TEXT,
    previous_block_hash_id INTEGER UNSIGNED,     -- id of record in Transactions table
    -- ledger_hash            TEXT,
    ledger_hash_id         INTEGER UNSIGNED,     -- id of record in Transactions table
    -- txlist_hash            TEXT,
    txlist_hash_id         INTEGER UNSIGNED,     -- id of record in Transactions table
    -- messages_hash          TEXT,
    messages_hash_id       INTEGER UNSIGNED,     -- id of record in Transactions table
    difficulty             FLOAT
) ENGINE=MyISAM;

CREATE UNIQUE INDEX block_index   ON blocks (block_index);
CREATE        INDEX block_hash_id ON blocks (block_hash_id);

