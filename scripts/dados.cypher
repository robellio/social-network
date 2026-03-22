CREATE (u1:User {id: 'user1', name: 'Thiago Novais', email: 'thiago@seuemail.com', age: 28, city: 'São Paulo', createdAt: datetime('2025-01-15')});
CREATE (u2:User {id: 'user2', name: 'Paula Salles', email: 'paula@seuemail.com', age: 32, city: 'Rio de Janeiro', createdAt: datetime('2025-02-20')});
CREATE (u3:User {id: 'user3', name: 'Maria Lemos', email: 'maria@seuemail.com', age: 25, city: 'São Paulo', createdAt: datetime('2025-01-15')});
CREATE (u4:User {id: 'user4', name: 'Felipe Silva', email: 'felipe@seuemail.com', age: 35, city: 'São Paulo', createdAt: datetime('2025-03-05')});
CREATE (u5:User {id: 'user5', name: 'Eduardo Novais', email: 'edu@seuemail.com', age: 29, city: 'Curitiba', createdAt: datetime('2025-02-28')});
CREATE (u6:User {id: 'user6', name: 'Jaime Santos', email: 'jaime@seuemail.com', age: 31, city: 'São Paulo', createdAt: datetime('2025-03-15')});
CREATE (u7:User {id: 'user7', name: 'Jorge Nunes', email: 'jorge@seuemail.com', age: 27, city: 'Rio de Janeiro', createdAt: datetime('2025-04-01')});
CREATE (u8:User {id: 'user8', name: 'Fernanda Lima', email: 'fernanda@seuemail.com', age: 33, city: 'Brasília', createdAt: datetime('2025-03-20')});
CREATE (u9:User {id: 'user9', name: 'Lucas Santana', email: 'lucas@seuemail.com', age: 26, city: 'Belo Horizonte', createdAt: datetime('2025-04-10')});
CREATE (u10:User {id: 'user10', name: 'Roberto Silva', email: 'roberto@seuemail.com', age: 30, city: 'São Paulo', createdAt: datetime('2025-05-01')});

CREATE (g1:Group {id: 'group1', name: 'Tecnologia e Inovação', category: 'Tech', createdBy: 'user1', createdAt: datetime('2025-01-20')});
CREATE (g2:Group {id: 'group2', name: 'Viagens e Aventuras', category: 'Lifestyle', createdBy: 'user2', createdAt: datetime('2025-02-01')});
CREATE (g3:Group {id: 'group3', name: 'Fotografia Opa', category: 'Arts', createdBy: 'user3', createdAt: datetime('2025-02-15')});
CREATE (g4:Group {id: 'group4', name: 'Marketing Digital', category: 'Business', createdBy: 'user4', createdAt: datetime('2025-03-10')});

CREATE (c1:Community {id: 'cmn1', name: 'Desenvoldedores First Tech', topic: 'Programming', membersCount: 0});
CREATE (c2:Community {id: 'cmn2', name: 'Foodies Brasil', topic: 'Food', membersCount: 0});
CREATE (c3:Community {id: 'cmn3', name: 'Esportes Radicais', topic: 'Sports', membersCount: 0});

CREATE (p1:Post {id:'post1', content: 'Python versus JavaScript: Qual sua preferência?', createdAt: datetime('2025-06-01T10:00:00'), likes: 0, commentsCount: 0});
CREATE (p2:Post {id:'post2', content: 'Acabei de voltar de uma viagem incrível e fui promovido na empresa em que trabalho', createdAt: datetime('2023-06-02T14:00:00'), likes: 0, commentsCount: 0});
CREATE (p3:Post {id:'post3', content: 'Dicas de fotografia para iniciantes', createdAt: datetime('2025-06-04T11:00:00'), likes: 0, commentsCount: 0});
CREATE (p4:Post {id:'post4', content: 'As melhores estratégias de vendas em 2026', createdAt: datetime('2025-06-04T09:00:00'), likes: 0, commentsCount: 0});
CREATE (p5:Post {id:'post5', content: 'A Inteligência Artificial está transformando o mercado', createdAt: datetime('2024-06-01T18:00:00'), likes: 0, commentsCount: 0});
CREATE (p6:Post {id:'post6', content: 'Como você tem utilizado a Inteligência Artificial no seu dia a dia?', createdAt: datetime('2024-06-08T10:00:00'), likes: 0, commentsCount: 0});