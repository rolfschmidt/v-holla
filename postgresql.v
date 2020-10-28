module holla

import pg

pub fn postgresql_example() bool {
    config := pg.Config{
        host: 'localhost'
        user: 'postgres'
        password: 'postgres'
        dbname: 'holla'
    }
    db := pg.connect(config) or {
        panic('driver init failed:$err')
    }
    db.close()

    return true
}