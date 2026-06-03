CREATE TABLE IF NOT EXISTS health_records (
    id TEXT PRIMARY KEY,
    patient_name TEXT,
    age INTEGER,
    phone TEXT,
    patient_type TEXT,
    raw_text TEXT,
    language TEXT,
    structured_json JSONB,
    risk_level TEXT,
    created_at TIMESTAMP,
    source_device TEXT
);

CREATE INDEX IF NOT EXISTS idx_health_records_created_at ON health_records(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_health_records_risk_level ON health_records(risk_level);
