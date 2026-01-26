CREATE TABLE addresses (
    id BIGINT AUTO_INCREMENT,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    zip VARCHAR(255) NOT NULL,
    user_id BIGINT NOT NULL,
    CONSTRAINT addresses_pk PRIMARY KEY (id),
    CONSTRAINT fk_addresses_users
        FOREIGN KEY (user_id)
        REFERENCES users (id)
        ON DELETE CASCADE
);
