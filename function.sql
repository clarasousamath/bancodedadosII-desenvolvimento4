CREATE FUNCTION contar_clientes_cadastrados_por_dia(data_alvo DATE)
RETURNS INT
BEGIN
    DECLARE total_clientes INT;
    
    SELECT COUNT(*) INTO total_clientes
    FROM clientes
    WHERE DATE(data_cadastro) = data_alvo;
    
    RETURN total_clientes;
END;
