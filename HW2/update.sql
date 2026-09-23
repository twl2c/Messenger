UPDATE users
SET status = 'offline'
WHERE user_id = 1;

UPDATE chats
SET title = 'Рабочая группа'
WHERE chat_id = 2;

UPDATE chat_members
SET role = 'admin'
WHERE chat_id = 4
  AND user_id = 4;
