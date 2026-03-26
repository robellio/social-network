//Top 5 usuários com mais seguidores 
MATCH (u:User)<-[f:FOLLOWS]-(follower)
RETURN u.name, COUNT(follower) AS followersCount 
ORDER BY followersCount DESC LIMIT 5;

// Posts mais populares
MATCH (p:Post)<-[l:LIKED]-(u:User)
OPTIONAL MATCH (p)<-[c:COMMENTED]-(u2:User)
RETURN p.id, p.content, COUNT(DISTINCT  1) AS likes, COUNT(DISTINCT c)
AS comments, (COUNT(DISTINCT l) + COUNT(DISTINCT c)) AS totalEngagement 
ORDER BY totalEngagement DESC LIMIT 10;

// Usuários com maior engajamento 
MATCH (u:User)-[:PUBLISHED]->(p:Post) 
OPTIONAL MATCH (p)<-[l:LIKED]-(liker) 
OPTIONAL MATCH (p)<-[c:COMMENTED]-(commenter)
RETURN u.name, COUNT(DISTINCT p) AS posts,
    COUNT(DISTINCT l) AS totalLikes,
    COUNT(DISTINCT c) AS totalComments,
    (COUNT(DISTINCT l) * COUNT(DISTINCT c)) AS totalInteractions 
    ORDER BY totalInteractions DESC;

// Usuarios que interagem com os mesmos posts
MATCH (u1:User)-[:LIKED|COMMENTED]->(p:Post)<-[:LIKED|COMMENTED]-(u2:User)
WHERE u1 <> u2 RETURN u1.name AS user1, u2.name AS user2, COUNT(p)
AS commonInteractions ORDER BY commonInteractions DESC LIMIT 10;

// Grupos mais ativos
MATCH (g:Group)<-[:BELONGS_TO]-(u:User)-[:PUBLISHED]->(p:Post)
OPTIONAL MATCH (p)<-[i:INTERACTED_WITH]-()
RETURN g.name, COUNT(DISTINCT u) AS members,
    COUNT(DISTINCT p) AS posts,
    COUNT(i) AS interactions ORDER BY interactions DESC;

// Usuários que pertencem a mais de um grupo 
MATCH (u:User)-[:BELONGS_TO]->(g:Group)
WITH u, COLLECT(g.category) AS categories WHERE size(categories) > 1
RETURN u.name, categories, size(categories) AS groupsCount
ORDER BY groupsCount DESC;

// Recomendação de grupo
MATCH (u:User {name: 'Thiago Novais'})-[:FRIENDS]-(friend)
MATCH (friend)-[:BELONGS_TO]->(g:Group)
WHERE NOT (u)-[:BELONGS_TO]->(g)
RETURN g.name, COUNT(friend) AS friendsInGroup
ORDER BY friendsInGroup DESC LIMIT 5;