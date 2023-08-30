SELECT TOP 10
    C.First_Name,
    C.Last_Name,
    CONCAT(A.Address_1, ', ', A.Zip, ' ', A.City, ', ', A.Country) AS Address,
    S.Tracking_Number AS TrackingNumber,
    O.Order_ID AS OrderNumber,
    P.Payment_Type AS PaymentMethod,
    CONCAT(Pr.Product_Name, ' ', Pr.Price) AS ProductPurchased,
    Ca.Category_Name AS Category
FROM Customers C
INNER JOIN Address A ON C.Address_ID = A.Address_ID
INNER JOIN Shipping S ON C.Customer_ID = S.Customer_ID
INNER JOIN Orders O ON S.Shipping_ID = O.Shipping_ID
INNER JOIN Payments P ON O.Payments_ID = P.Payments_ID
INNER JOIN Product Pr ON O.Product_ID = Pr.Product_ID
INNER JOIN Category Ca ON Pr.Category_ID = Ca.Category_ID;
