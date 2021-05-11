CREATE DATABASE curso_sql;
USE curso_sql;

CREATE TABLE funcionarios
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
    departamento varchar(45) not null,
    PRIMARY KEY (id)
);

CREATE TABLE veiculos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    funcionario_id INT UNSIGNED DEFAULT NULL,
    veiculo VARCHAR(45) NOT NULL DEFAULT '',
    placa VARCHAR(10) NOT NULL DEFAULT '',
    PRIMARY KEY (id),
    CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY (funcionario_id)
        REFERENCES funcionarios (id)
);

CREATE TABLE salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    PRIMARY KEY (faixa)
);

ALTER TABLE funcionarios CHANGE COLUMN nome nome_func varchar(50) not null;
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome varchar(50) not null;

DROP TABLE salarios;

CREATE INDEX departamento ON funcionarios (departamento);
CREATE INDEX nomes ON funcionarios (nome(6));