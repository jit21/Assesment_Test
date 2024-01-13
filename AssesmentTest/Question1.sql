-- Create all possible tables for storing this data
-- a. Calls
-- b. Messages
-- c. People asked for direction
-- d. Website visits from profile
-- e. Profile views
-- f. Searches appearance

CREATE TABLE Calls (
    CallID INT PRIMARY KEY,
    CallerID INT,
    ReceiverID INT,
    CallDuration INT,
    CallDateTime DATETIME,
    FOREIGN KEY (CallerID) REFERENCES People(PersonID),
    FOREIGN KEY (ReceiverID) REFERENCES People(PersonID)
);


CREATE TABLE Messages (
    MessageID INT PRIMARY KEY,
    SenderID INT,
    ReceiverID INT,
    MessageContent TEXT,
    MessageDateTime DATETIME,
    FOREIGN KEY (SenderID) REFERENCES People(PersonID),
    FOREIGN KEY (ReceiverID) REFERENCES People(PersonID)
);


CREATE TABLE DirectionRequests (
    RequestID INT PRIMARY KEY,
    RequesterID INT,
    DestinationLatitude DECIMAL(10, 8),
    DestinationLongitude DECIMAL(11, 8),
    RequestDateTime DATETIME,
    FOREIGN KEY (RequesterID) REFERENCES People(PersonID)
);


CREATE TABLE WebsiteVisits (
    VisitID INT PRIMARY KEY,
    VisitorID INT,
    ProfileOwnerID INT,
    VisitDateTime DATETIME,
    FOREIGN KEY (VisitorID) REFERENCES People(PersonID),
    FOREIGN KEY (ProfileOwnerID) REFERENCES People(PersonID)
);


CREATE TABLE ProfileViews (
    ViewID INT PRIMARY KEY,
    ViewerID INT,
    ProfileOwnerID INT,
    ViewDateTime DATETIME,
    FOREIGN KEY (ViewerID) REFERENCES People(PersonID),
    FOREIGN KEY (ProfileOwnerID) REFERENCES People(PersonID)
);


CREATE TABLE SearchesAppearance (
    AppearanceID INT PRIMARY KEY,
    SearcherID INT,
    AppearanceDateTime DATETIME,
    FOREIGN KEY (SearcherID) REFERENCES People(PersonID)
);




