import ceylon.language.meta.model {
    Attribute
}

shared abstract class DaoTable<Dao, out Id>(tableName, primaryKey) {

    shared String tableName;
    shared Attribute<Dao,Id> primaryKey;

    shared formal Dao from(TableValue<Dao> val) ;

    shared class Column<out Value>(columnName, daoValue, default = null) {

        shared String columnName;

        shared Attribute<Dao,Value> daoValue;

        shared Value? default;
    }
}