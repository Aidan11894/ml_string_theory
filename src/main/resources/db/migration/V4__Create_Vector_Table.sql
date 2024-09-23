CREATE TABLE Vector (
    Id UUID PRIMARY KEY,
    RunId UUID REFERENCES Run(Id) ON DELETE CASCADE,
    VectorType VARCHAR(50),
    VectorValue TEXT,
    VectorLength FLOAT
);
