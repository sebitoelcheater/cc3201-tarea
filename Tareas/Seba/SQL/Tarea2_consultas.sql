-- Si se desea saber cuán popular es cada un usuario, ordenados de más popular, a menos:

SELECT id, name, last_name, mail, popularidad FROM User, (SELECT id_followed, COUNT(id_followed) as popularidad FROM Following as f GROUP BY id_followed) as f where id = f.id_followed ORDER BY popularidad DESC;

-- Si se desea enlistar y empaginar todos los comentarios, guardando el orden de prioridad para aquellos que comentarios padres que hayan sido comentados. En dicho caso, ese comentario padre es 'fresco' porque fué recientemente comentado, es decir su updates_at fue modificado. Esta consulta cumplirá dicha función. Hay que tener cuenta solamente lo que ponemos en LIMIT. El primer atributo del LIMIT es primer el número de página, menos uno, multiplicado por la cantidad de comentarios que se desea enlistar por cada página. El segundo atributo corresponde a la cantidad de comentarios que se desea enlistar por cada página

SELECT id FROM Comment as c ORDER BY updated_at WHERE type=0 DESC LIMIT 2,5;

-- Se desea saber el usuario más amistoso.

SELECT id, name, last_name, mail, popularidad FROM User as u, (SELECT COUNT(id) as popularidad, id_requested FROM Friendship WHERE status=1 GROUP BY id_requested) as p WHERE p.id_requested=u.id;