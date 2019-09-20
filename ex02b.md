# Normalization Process for FIgure 1-35
#### Derek Macek and Nathan Abay

After reviewing Figure 1-35 we noticed 3 themes within the data: Pet Data, Owner Data, and Service Data.
With the themes determined, we needed to separate the pertinent information needed within each.
Below are the 3 new tables we created based on the data.
We created a surrogate key so each pet could be uniquely identified since some pet owners may have multiple pets.
We replaced the data ??? and unknown with NULL values which represent no value instead of data with incosistent value.

PetID | PetName | PetType | PetBreed      | Pet DOB  
------|---------|---------|---------------|--------- 
1     | King    | Dog     | Std. Poodle   | 27-Feb-14 
2     | Teddy   | Cat     | Cashmier      | 1-Feb-13  
3     | Filo    | Dog     | Std. Poodle   | 17-Jul-15  
4     | AJ      | Dog     | Collie Mix    | 5-May-15  
5     | Cedro   | Cat     | NULL          | 6-Jun-12  
6     | Woolley | Cat     | NULL          | NULL  
7     | Buster  | Dog     | Border Collie | 11-Dec-11  
8     | Jiddah  | Cat     | Abyssinian    | 1-Jul-08  

Once we had the pet data in one table we then moved on to the owner data.
The only category that would not have duplicate data was the owners' phone numbers so we used this as our key.
The owner table also contained multiple instances of owners so we removed them.

OwnerPhone   | OwnerEmail                 | OwnerLastName | OwnerFirstName
-----------  |----------------------------|---------------|---------------
201-823-5467 | Marsha.Downs@somewhere.com | Downs         | Marsha
201-735-9812 | Richard.James@somewhere.com| James         | RIchard
201-823-6578 | Liz.Frier@somewhere.com    | Frier         | Liz
201-634-7865 | Miles.Trent@somewhere.com  | Trent         | Miles
201-634-2345 | Hilary.Evans@somewhere.com | Evans         | Hilary

In order to give each service a functional dependency we added ServiceID to uniquely identify each transaction.
We then added PetID as a foreign key to identify which animal was being serviced.

ServiceID | PetID   | Service           | Date     | Charge
----------|---------|-------------------|----------|-------
SR1       | 1       | Ear Infection     | 17-Aug-16| $65.00
SR2       | 2       | Nail Clip         | 5-Sep-16 | $27.50
SR3       | 4       | One-year Shots    | 5-May-16 | $42.50
SR4       | 5       | Nail Clip         | 5-Sep-16 | $27.50
SR5       | 6       | Skin Infection    | 3-Oct-16 | $35.00
SR6       | 7       | Laceration Repair | 5-Oct-16 | $127.00
SR7       | 8       | Booster Shots     | 4-Nov-16 | $111.00

With these steps the database has been normalized into three tables.
