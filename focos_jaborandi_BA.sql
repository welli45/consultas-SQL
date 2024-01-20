SELECT 
 ano,
 bioma,
  COUNT(id_foco) AS quantidade_foco
FROM 
  basedosdados.br_inpe_queimadas.microdados Q
INNER JOIN 
  basedosdados.br_bd_diretorios_brasil.municipio M
ON Q.id_municipio = M.id_municipio
WHERE
  nome = "Jaborandi"
GROUP BY
  ano, nome, bioma
ORDER BY
ano DESC;