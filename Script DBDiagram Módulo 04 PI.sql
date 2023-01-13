CREATE TABLE `Cursos` (
  `id` int,
  `titulo` varchar(50)
);

CREATE TABLE `Modalidades` (
  `id` int,
  `tipo` varchar(50),
  `Cursos_id` int
);

CREATE TABLE `Turmas` (
  `id` int,
  `Cursos_id` int,
  `Modalidades_id` int,
  `Aluno_cpf` varchar(14),
  `Professores_cpf` varchar(100)
);

CREATE TABLE `Alunos` (
  `id` int,
  `nome` varchar(100),
  `cpf` varchar(14)
);

CREATE TABLE `Professores` (
  `id` int,
  `nome` varchar(100),
  `cpf` varchar(14)
);

ALTER TABLE `Modalidades` ADD FOREIGN KEY (`Cursos_id`) REFERENCES `Cursos` (`id`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`Cursos_id`) REFERENCES `Cursos` (`id`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`Modalidades_id`) REFERENCES `Modalidades` (`id`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`Aluno_cpf`) REFERENCES `Alunos` (`cpf`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`Professores_cpf`) REFERENCES `Professores` (`cpf`);
