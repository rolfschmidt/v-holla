module holla

import mysql

pub fn mysql_example() bool {
    mut mysql := mysql.Connection{
        host: '127.0.0.1',
        username: 'root'
        password: 'root'
        dbname: 'holla'
    }
    mysql.connect() or {
        panic('driver init failed:$err')
    }
    mysql.close()

    return true
}