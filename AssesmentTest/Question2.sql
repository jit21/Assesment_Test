--  Dump dummy data into these tables


-- Insert dummy data into People table
INSERT INTO People (PersonID, FirstName, LastName, Email)
VALUES
    (1, 'Jit', 'Das', 'jitdas@gmail.com'),
    (2, 'ram', 'Das', 'ramdas@gmail.com'),
    (3, 'dip', 'Das', 'dipdas@gmail.com'),
    (4, 'Sam', 'Das', 'samdas@gmail.com'),
    (5, 'Monoj', 'Das', 'Monojdas@gmail.com'),
    (6, 'Amit', 'Das', 'amitdas@gmail.com'),
    (7, 'Rik', 'Das', 'Rikdas@gmail.com');;

-- Insert dummy data into Calls table
INSERT INTO Calls (CallID, CallerID, ReceiverID, CallDuration, CallDateTime)
VALUES
    (1, 1, 2, 100, '2024-01-12 10:30:00'),
    (2, 2, 3, 150, '2024-01-12 11:45:00'),
    (3, 3, 4, 170, '2024-01-12 12:45:00'),
    (4, 4, 6, 120, '2024-01-12 10:45:00'),
    (5, 5, 5, 130, '2024-01-12 18:45:00'),
    (6, 6, 7, 170, '2024-01-12 19:45:00'),
    (7, 7, 8, 190, '2024-01-12 09:45:00'),
    (8, 8, 1, 200, '2024-01-12 08:45:00');

-- Insert dummy data into Messages table
INSERT INTO Messages (MessageID, SenderID, ReceiverID, MessageContent, MessageDateTime)
VALUES
    (1, 1, 2, 'Hi Jit, how are you?', '2024-01-12 09:00:00'),
    (2, 2, 3, 'Hey dip, I'm good!', '2024-01-12 10:00:00'),
    (3, 6, 2, 'Hey rik, I'm good!', '2024-01-12 08:00:00'),
    (4, 5, 1, 'Hey amit, I'm good!', '2024-01-12 09:00:00'),
    (5, 4, 5, 'Hey monoj, I'm good!', '2024-01-12 07:00:00'),
    (6, 3, 4, 'Hey Dav, I'm good!', '2024-01-12 08:00:00');

-- Insert dummy data into DirectionRequests table
INSERT INTO DirectionRequests (RequestID, RequesterID, DestinationLatitude, DestinationLongitude, RequestDateTime)
VALUES
    (1, 1, 37.7749, -122.4194, '2024-01-12 14:30:00'),
    (2, 2, 40.7128, -74.0060, '2024-01-12 15:15:00'),
    (3, 4, 41.7128, -94.0060, '2024-01-12 16:15:00'),
    (4, 5, 43.7128, -124.0060, '2024-01-12 17:15:00'),
    (5, 1, 44.7128, -234.0060, '2024-01-12 19:15:00');

-- Insert dummy data into WebsiteVisits table
INSERT INTO WebsiteVisits (VisitID, VisitorID, ProfileOwnerID, VisitDateTime)
VALUES
    (1, 1, 2, '2024-01-12 08:45:00'),
    (2, 2, 3, '2024-01-12 09:30:00'),
    (3, 3, 4, '2024-01-12 10:30:00'),
    (4, 4, 5, '2024-01-12 11:30:00'),
    (5, 5, 6, '2024-01-12 17:30:00'),
    (6, 6, 1, '2024-01-12 20:30:00');

-- Insert dummy data into ProfileViews table
INSERT INTO ProfileViews (ViewID, ViewerID, ProfileOwnerID, ViewDateTime)
VALUES
    (1, 1, 2, '2024-01-12 12:00:00'),
    (2, 2, 3, '2024-01-12 14:00:00'),
    (3, 2, 3, '2024-01-12 15:00:00'),
    (4, 2, 3, '2024-01-12 17:00:00'),
    (5, 2, 3, '2024-01-12 18:00:00');

-- Insert dummy data into SearchesAppearance table
INSERT INTO SearchesAppearance (AppearanceID, SearcherID, AppearanceDateTime)
VALUES
    (1, 1, '2024-01-12 14:00:00'),
    (2, 2, '2024-01-12 17:00:00'),
    (3, 3, '2024-01-12 11:00:00'),
    (4, 4, '2024-01-12 16:00:00'),
    (5, 5, '2024-01-12 19:00:00');
