CREATE TABLE Run (
    Id UUID PRIMARY KEY,
    AlgorithmId UUID REFERENCES Algorithm(Id),
    NumLayers INTEGER,
    Basis VARCHAR(255),
    StartTime TIMESTAMPTZ,
    EndTime TIMESTAMPTZ,
    ShortestVectorId UUID REFERENCES Vector(Id),
    ShortestKnownVectorId UUID REFERENCES Vector(Id),
    DistanceToShortestKnownVector FLOAT,
    StepsTaken INTEGER,
    NumEpisodes INTEGER,
    ModelWeightsPath VARCHAR(255),
    TotalReturn FLOAT,
    SimultaneousSteps INTEGER,
    CreatedAt TIMESTAMPTZ DEFAULT NOW(),
    UpdatedAt TIMESTAMPTZ
);
