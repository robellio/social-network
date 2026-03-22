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

MATCH (u7:User {id: 'user7'}), (u2:User {id: 'user2'})
CREATE (u7)-[:FOLLOWS {since: datetime('2025-04-10')}]->(u2); 

MATCH (u8:User {id: 'user8'}), (u9:User {id: 'user9'})
CREATE (u8)-[:FOLLOWS {since: datetime('2025-05-20')}]->(u9); 

MATCH (u9:User {id: 'user9'}), (u10:User {id: 'user10'})
CREATE (u9)-[:FOLLOWS {since: datetime('2025-06-05')}]->(u10); 

// relacionamento bidirecional 
MATCH (u1:User {id: 'user1'}), (u4:User {id: 'user4'})
CREATE (u1)-[:FRIENDS {since: datetime('2025-01-20')}]->(u4);

MATCH (u2:User {id: 'user2'}), (u7:User {id: 'user7'})
CREATE (u2)-[:FRIENDS {since: datetime('2025-02-15')}]->(u7);

MATCH (u3:User {id: 'user3'}), (u5:User {id: 'user5'})
CREATE (u3)-[:FRIENDS {since: datetime('2025-03-10')}]->(u5);

MATCH (u6:User {id: 'user6'}), (u10:User {id: 'user10'})
CREATE (u6)-[:FRIENDS {since: datetime('2025-04-25')}]->(u10);

MATCH (u8:User {id: 'user8'}), (u9:User {id: 'user9'})
CREATE (u8)-[:FRIENDS {since: datetime('2025-05-30')}]->(u9);

// Post 
MATCH (u1:User {id: 'user1'}), (p1:Post {id: 'post1'})
CREATE (u1)-[:PUBLISHED {at: datetime('2025-06-01T10:00:00')}]->(p1);

MATCH (u2:User {id: 'user2'}), (p2:Post {id: 'post2'})
CREATE (u2)-[:PUBLISHED {at: datetime('2025-06-02T14:30:00')}]->(p2);

MATCH (u3:User {id: 'user3'}), (p3:Post {id: 'post3'})
CREATE (u3)-[:PUBLISHED {at: datetime('2025-06-03T09:15:00')}]->(p3);

MATCH (u4:User {id: 'user4'}), (p4:Post {id: 'post4'})
CREATE (u4)-[:PUBLISHED {at: datetime('2025-06-04T11:00:00')}]->(p4);

MATCH (u5:User {id: 'user5'}), (p5:Post {id: 'post5'})
CREATE (u5)-[:PUBLISHED {at: datetime('2025-06-05T16:20:00')}]->(p5);

MATCH (u6:User {id: 'user6'}), (p6:Post {id: 'post6'})
CREATE (u6)-[:PUBLISHED {at: datetime('2025-06-06T19:00:00')}]->(p6);

// Usuário Curtiu 
MATCH (u1:User {id: 'user1'}), (p2:Post {id: 'post2'})
CREATE (u1)-[:LIKED {at: datetime('2025-06-02T15:00:00')}]->(p2);

MATCH (u3:User {id: 'user3'}), (p1:Post {id: 'post1'})
CREATE (U3)-[:LIKED {at: datetime('2025-06-01T11:30:00')}]->(p1);

MATCH (u4:User {id: 'user4'}), (p1:Post {id: 'post1'})
CREATE (u4)-[:LIKED {at: datetime('2025-06-01T12:00:00')}]->(p1);

MATCH (u2:User {id: 'user2'}), (p3:Post {id: 'post3'})
CREATE (u2)-[:LIKED {at: datetime('2025-06-03T10:00:00')}]->(p3);

MATCH (u5:User {id: 'user5'}), (p4:Post {id: 'post4'})
CREATE (u5)-[:LIKED {at: datetime('2025-06-04T12:30:00')}]->(p4);

MATCH (u7:User {id: 'user7'}), (p2:Post {id: 'post2'})
CREATE (u7)-[:LIKED {at: datetime('2025-06-02T16:00:00')}]->(p2);

MATCH (u8:User {id: 'user8'}), (p5:Post {id: 'post5'})
CREATE (u8)-[:LIKED {at: datetime('2025-06-05T17:00:00')}]->(p5);

MATCH (u9:User {id: 'user9'}), (p6:Post {id: 'post6'})
CREATE (u9)-[:LIKED {at: datetime('2025-06-06T20:00:00')}]->(p6);

MATCH (u10:User {id: 'user10'}), (p1:Post {id: 'post1'})
CREATE (u10)-[:LIKED {at: datetime('2025-06-01T13:00:00')}]->(p1);