-- 1. Добавляем номер телефона пользователю
ALTER TABLE users
ADD COLUMN phone VARCHAR(20);

-- 2. Добавляем описание чата
ALTER TABLE chats
ADD COLUMN description TEXT;

-- 3. Добавляем информацию о редактировании сообщения
ALTER TABLE messages
ADD COLUMN edited_at TIMESTAMP;
