SELECT 
    p.nome AS profissional,
    c.nome AS cliente,
    s.nome AS servico,
    a.data_hora AS horario_marcado
FROM agendamento a
JOIN profissional p ON a.profissional_id = p.id
JOIN cliente c ON a.cliente_id = c.id
JOIN servico s ON a.servico_id = s.id
WHERE DATE(a.data_hora) = '2023-11-15'  -- Filtro por data
ORDER BY p.nome, a.data_hora;
