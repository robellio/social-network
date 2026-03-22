// Seguir
MATCH (u1:User {id: 'user1'}), (u2:User {id: 'user2'})
CREATE (u1)-[:FOLLOWS {since: datetime('2025-03-01')}]->(u2); 

MATCH (u1:User {id: 'user1'}), (u3:User {id: 'user3'})
CREATE (u1)-[:FOLLOWS {since: datetime('2025-03-15')}]->(u3); 

MATCH (u2:User {id: 'user2'}), (u4:User {id: 'user4'})
CREATE (u2)-[:FOLLOWS {since: datetime('2025-04-01')}]->(u4); 

MATCH (u3:User {id: 'user3'}), (u1:User {id: 'user1'})
CREATE (u3)-[:FOLLOWS {since: datetime('2025-02-20')}]->(u1); 

MATCH (u4:User {id: 'user4'}), (u5:User {id: 'user5'})
CREATE (u4)-[:FOLLOWS {since: datetime('2025-05-01')}]->(u5); 

MATCH (u5:User {id: 'user5'}), (u6:User {id: 'user6'})
CREATE (u5)-[:FOLLOWS {since: datetime('2025-05-15')}]->(u6); 

MATCH (u6:User {id: 'user6'}), (u1:User {id: 'user1'})
CREATE (u6)-[:FOLLOWS {since: datetime('2025-06-01')}]->(u1); 

