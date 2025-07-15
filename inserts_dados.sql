USE salao_beleza;

INSERT INTO profissionais (nome, telefone, email, especialidade) VALUES
('Ana Souza', '(11) 9876-5432', 'ana@salao.com', 'Cabeleireira'),
('Carlos Oliveira', '(11) 9123-4567', 'carlos@salao.com', 'Barbeiro'),
('Mariana Costa', '(11) 9345-6789', 'mariana@salao.com', 'Manicure');

INSERT INTO clientes (nome, telefone, email, cpf) VALUES
('João Silva', '(11) 9999-8888', 'joao@email.com', '123.456.789-00'),
('Maria Santos', '(11) 9777-6666', 'maria@email.com', '987.654.321-00'),
('Pedro Alves', '(11) 9555-4444', 'pedro@email.com', '456.789.123-00');

INSERT INTO servicos (nome, descricao, duracao, preco) VALUES
('Corte Feminino', 'Corte e finalização', '01:00:00', 80.00),
('Barba Completa', 'Aparar e desenhar', '00:45:00', 50.00),
('Manicure Completa', 'Unhas das mãos e pés', '01:30:00', 70.00);

INSERT INTO disponibilidade (profissional_id, dia_semana, hora_inicio, hora_fim) VALUES
(1, 'seg', '09:00:00', '18:00:00'),
(1, 'ter', '09:00:00', '18:00:00'),
(2, 'qua', '10:00:00', '19:00:00'),
(3, 'sex', '08:00:00', '17:00:00');

INSERT INTO agendamentos (cliente_id, profissional_id, servico_id, data_hora, status) VALUES
(1, 1, 1, '2025-07-20 10:00:00', 'agendado'),
(2, 2, 2, '2025-07-20 14:30:00', 'agendado'),
(3, 3, 3, '2025-07-21 11:00:00', 'agendado');
