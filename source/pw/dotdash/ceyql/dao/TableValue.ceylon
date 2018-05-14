shared interface TableValue<Dao> {

    shared formal Type column<Type>(DaoTable<Dao,Anything>.Column<Type> column) ;
}