SELECT * FROM app_user INNER JOIN user_role ON app_user.role_id = user_role.role_id WHERE user_role."name" = 'BASIC_USER';

INSERT INTO app_user (username, "password", first_name, last_name, role_id ) VALUES
('kas', '12345', 'keith', 'keilson', 4);

SELECT * FROM app_user INNER JOIN study_set ON app_user.user_id = study_set.owner_id WHERE app_user.user_id = 4;


SELECT username, user_role."name", category."name", flashcard.question, flashcard.answer  FROM 
app_user LEFT JOIN  user_role ON app_user.role_id = user_role.role_id
LEFT JOIN study_set ON app_user.user_id = study_set.owner_id 
LEFT JOIN study_set_card ON study_set.study_set_id = study_set_card.study_set_id 
LEFT JOIN flashcard ON study_set_card.flashcard_id = flashcard.flashcard_id 
LEFT JOIN category ON flashcard.flashcard_id = category.category_id WHERE app_user.user_id =1;



