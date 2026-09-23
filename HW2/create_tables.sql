CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE chats (
    chat_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    type VARCHAR(20) NOT NULL
);

CREATE TABLE messages (
    message_id SERIAL PRIMARY KEY,
    chat_id INT NOT NULL,
    user_id INT NOT NULL,
    text TEXT NOT NULL,
    sent_at TIMESTAMP NOT NULL,

    CONSTRAINT fk_messages_chat
        FOREIGN KEY (chat_id)
        REFERENCES chats(chat_id),

    CONSTRAINT fk_messages_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

CREATE TABLE chat_members (
    chat_id INT NOT NULL,
    user_id INT NOT NULL,
    joined_at TIMESTAMP NOT NULL,
    role VARCHAR(20) NOT NULL,

    PRIMARY KEY (chat_id, user_id),

    CONSTRAINT fk_chat_members_chat
        FOREIGN KEY (chat_id)
        REFERENCES chats(chat_id),

    CONSTRAINT fk_chat_members_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

CREATE TABLE attachments (
    attachment_id SERIAL PRIMARY KEY,
    message_id INT NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    file_type VARCHAR(50) NOT NULL,

    CONSTRAINT fk_attachments_message
        FOREIGN KEY (message_id)
        REFERENCES messages(message_id)
);

CREATE TABLE reactions (
    reaction_id SERIAL PRIMARY KEY,
    message_id INT NOT NULL,
    user_id INT NOT NULL,
    emoji VARCHAR(10) NOT NULL,

    CONSTRAINT fk_reactions_message
        FOREIGN KEY (message_id)
        REFERENCES messages(message_id),

    CONSTRAINT fk_reactions_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);
