INSERT INTO users (username, email, status, phone)
VALUES
('alex', 'alex@mail.com', 'online', '+79000000001'),
('maria', 'maria@mail.com', 'offline', '+79000000002'),
('ivan', 'ivan@mail.com', 'online', '+79000000003'),
('anna', 'anna@mail.com', 'online', '+79000000004');

INSERT INTO messages
(chat_id, user_id, text, sent_at, edited_at)
VALUES
(1, 1, 'Всем привет!', '2026-09-20 10:05:00', NULL),
(1, 2, 'Привет!', '2026-09-20 10:06:00', NULL),
(2, 3, 'Как продвигается работа?', '2026-09-20 11:10:00', NULL),
(4, 4, 'Когда сдаём проект?', '2026-09-22 09:15:00', NULL);

INSERT INTO chat_members
(chat_id, user_id, joined_at, role)
VALUES
(1, 1, '2026-09-20 10:00:00', 'admin'),
(1, 2, '2026-09-20 10:01:00', 'member'),
(2, 3, '2026-09-20 11:00:00', 'admin'),
(4, 4, '2026-09-22 09:00:00', 'member');
