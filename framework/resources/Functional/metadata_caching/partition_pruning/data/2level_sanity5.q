select o_orderkey, dir0, dir1 from o_2level where dir0=extract(year from date '1991-01-02') and dir1 IN( 'feb', 'jan') and o_orderdate = date '1996-01-02';
