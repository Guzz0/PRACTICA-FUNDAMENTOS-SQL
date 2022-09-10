select m2.nombre ||' ' || m.nombre ||' '||ge.nombre as nombre_coche, f.dt_compra, f.matricula,
c.nombre as color, a.nombre as aseguradora, f.n_poliza from PRACTICA.flota f inner join practica.marca
m on f.id_marca = m.id_marca inner join practica.modelo m2 on f.id_modelo =m2.id_modelo
inner join practica.grupo_empresarial ge on f.id_grupo = ge.id_grupo inner join 
practica.color c on f.id_color = c.id_color inner join practica.aseguracion a 
on f.id_aseguradora =a.id_aseguradora;