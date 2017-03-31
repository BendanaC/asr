-- Deploy asr:access_log-table to pg

BEGIN;

CREATE TABLE access_log (
    ush_id BIGINT,
    tag_name VARCHAR(32) NOT NULL DEFAULT 'default',
    ltime TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    elapsed BIGINT NOT NULL,
    ip INET NOT NULL,
    code VARCHAR NOT NULL,
    status SMALLINT NOT NULL,
    bytes BIGINT NOT NULL,
    method VARCHAR NOT NULL,
    protocol VARCHAR,
    host VARCHAR NOT NULL,
    site VARCHAR NOT NULL,
    port INTEGER,
    url TEXT NOT NULL,
    ruser VARCHAR,
    peerstatus VARCHAR NOT NULL,
    peerhost VARCHAR,
    mime_type VARCHAR NOT NULL
);


COMMIT;
