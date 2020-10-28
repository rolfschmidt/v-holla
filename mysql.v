module holla

import mysql

pub fn mysql_example() bool {
    mut mysql := mysql.Connection{
        host: 'localhost',
        username: 'root'
        password: ''
        dbname: 'mysql'
    }
    mysql.connect() or {
        return false
    }
    mysql.close()

    return true
}