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