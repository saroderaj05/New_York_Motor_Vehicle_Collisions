

 SELECT db_name() as dbName,
      --  s.name AS SchemaName,
	    t.NAME AS TableName ,
       format(p.[Rows],'n0') as Table_Rows,
	  -- max(modify_date) ,
	  -- max(create_date) ,
	   CURRENT_TIMESTAMP QueryDate
    FROM    sys.tables t
    INNER JOIN sys.indexes i ON t.OBJECT_ID = i.object_id
    INNER JOIN sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
    INNER JOIN sys.schemas s on s.schema_id = t.schema_id

    WHERE --(t.name like 'dim%' or
          --  t.NAME  LIKE 'fact%' )
      --  and 
		 i.OBJECT_ID > 255 
		AND     i.index_id <= 1 
		--and  s.name = 'dbo'
		/* AND
        s.name in ('Schemaname1','Schemaname2') */
		--		and   (t.name like 'stg%'    )
		--and   (t.name like 'dim%'   or t.name like 'fct%'  )
	--and p.[Rows] > 0
	-- and t.name like 'fct%'  -- 'dim%'
    GROUP BY 
        t.NAME, i.object_id
		   , i.index_id
		   , i.name
		   ,s.name
		   , p.[Rows]
	--	   ,create_date
	--	   ,modify_date
    ORDER BY   s.name
	         , t.name
			 ;
