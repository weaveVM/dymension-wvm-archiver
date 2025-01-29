DROP TABLE IF EXISTS WeaveVMArchiverDymension;
DROP TABLE IF EXISTS WeaveVMArchiverDymensionBackfill;

CREATE TABLE IF NOT EXISTS WeaveVMArchiverDymension (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE TABLE IF NOT EXISTS WeaveVMArchiverDymensionBackfill (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE INDEX idx_archiver_txid ON WeaveVMArchiverDymension (WeaveVMArchiveTxid);
CREATE INDEX idx_backfill_txid ON WeaveVMArchiverDymensionBackfill (WeaveVMArchiveTxid);
CREATE INDEX idx_archiver_block_id ON WeaveVMArchiverDymension (NetworkBlockId);
CREATE INDEX idx_backfill_block_id ON WeaveVMArchiverDymensionBackfill (NetworkBlockId);
