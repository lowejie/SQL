CREATE TABLE mealcost (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Cost FLOAT,
  meal VARCHAR(255)
);
INSERT INTO mealcost
  (Cost,meal)
VALUES
  (0,'Undefined'),
  (12.99,'BB'),
  (17.99,'HB'),
  (21.99,'FB'),
  (35,'SC');


CREATE TABLE marketsegment (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Discount FLOAT,
  market_segment VARCHAR(255)
);
INSERT INTO marketsegment
  (Discount,market_segment)
VALUES
  (0,'Undefined'),
  (0.1,'Direct'),
  (0.1,'Groups'),
  (0.15,'Corporate'),
  (0.2,'Aviation'),
  (0.3,'Offline TA/TO'),
  (0.3,'Online TA'),
  (1,'Complementary');
