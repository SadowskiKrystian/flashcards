create table user (
	id int auto_increment primary key,
	username varchar(100) not null,
	password varchar(100) not null,
	email varchar(100) not null
)
COLLATE='utf8mb4_polish_ci'
ENGINE=InnoDB
;


create table flashcard_set (
	id int auto_increment primary key,
	name varchar(100) not null
)
COLLATE='utf8mb4_polish_ci'
ENGINE=InnoDB
;

create table user_flashcard_set (
	id int auto_increment primary key,
    user_id int,
    flashcard_set_id int not null,
    foreign key (user_id) references user(id),
    foreign key (flashcard_set_id) references flashcard_set(id)
);

create table flashcard (
	id int auto_increment primary key,
    user_id int not null,
	user_flashcard_set_id int not null,
    name varchar(100) not null,
    description varchar(1000) not null,
    foreign key (user_id) references user(id),
    foreign key (user_flashcard_set_id) references user_flashcard_set(id)
)
COLLATE='utf8mb4_polish_ci'
ENGINE=InnoDB
;

