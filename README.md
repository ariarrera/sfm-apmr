# sfm-apmr

## Scienctific Functional Module (SFM) repository

That is a code repository of the designed functional module for scientific interaction between museum memebrs of the Assembly of Peter's museums of Russia (APMR).

The respository currently contains SQL-files with DDL and DML queries to the module's database. The database includes 5 tables:

- **Attendees** table
  Contains records of users who applied to participate in an event (= had expressed their desire to).
  The *attendees_create.sql* file contains a DDL query used to create the table.
  The *attendees_insert_values.sql* file contains DML queries used to fill in values of the table.
  
- **Events** table
  Contains records of event appointments.
  The *events_create.sql* file contains a DDL query used to create the table.
  The *events_insert_values.sql* file contains DML queries used to fill in values of the table. 
  
- **Invitees** table
  Contains records of users who was invited to an event by an organizaer of an event appointment.
  The *inivitees_create.sql* file contains a DDL query used to create the table.
  The *invitees_insert_values.sql* file contains DML queries used to fill in values of the table.
  
- **Materials** table
  Contains records of materials attached to event appointments.
  The *materials_create.sql* file contains a DDL query used to create the table.
  The *materials_insert_values.sql* file contains DML queries used to fill in values of the table.
  
- **Users** table
  Contains records of users registered in the module's system.
  The *users_create.sql* file contains a DDL query used to create the table.
  The *users_insert_values.sql* file contains DML queries used to fill in values of the table.
  
The repository also contains a file presenting a sample of an SQL query that can be used to get one of the pages of the functional module, specifically, the event appointment page. The file is *event1000001_query,sql*.
