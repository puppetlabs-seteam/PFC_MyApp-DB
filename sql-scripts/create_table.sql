CREATE TABLE upload_images (
      id int(11) NOT NULL AUTO_INCREMENT,
      username varchar(255) DEFAULT "",
      filename varchar(255) DEFAULT "",
      timeline timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (id)
    ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1
