import pw.dotdash.ceyql.dao {
    DaoTable,
    TableValue
}

shared void run() {
}

shared class Server(name, online) {

    shared String name;
    shared Boolean online;
}

shared object servers extends DaoTable<Server,String>("servers", `Server.name`) {

    shared Column<String> name => Column<String>("name", `Server.name`);
    shared Column<Boolean> online => Column<Boolean>("online", `Server.online`);

    shared actual Server from(TableValue<Server> val) => Server(val.column(name), val.column(online));
}