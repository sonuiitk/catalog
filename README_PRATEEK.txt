
1) Run the following scripts to create the table

CREATE TABLE `products` (
  `id` varchar(1000) NOT NULL default '',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `price` int(11) NOT NULL default '0',
  `shipping` int(11) NOT NULL default '0',
  `group_id` varchar(1024) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `fk_Per` (`group_id`(1000))
) ENGINE=MyISAM



CREATE TABLE `groups` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` varchar(1024) NOT NULL default '',
  `name` varchar(1024) NOT NULL default '',
  `category` varchar(1024) NOT NULL default '',
  `sub_category` varchar(1024) NOT NULL default '',
  `store` varchar(1024) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM


2) Once the tables are created, go to the catalog/config/database.yml, and change the configurations of database according the testing environment. Make changes in the 'development' section.

3) Open catalog/app/models/product.rb. There is function written in the file named as 'self.create_database'. Change the file path according to the input. This function will generate the objects / rows in tables.
    How to run this function--
      Open console and go to the app directory. Type 'ruby .\script\runner Product.create_database'
      
4) Once the objects are created, start the web server by 'ruby .\script\server'

5) Once the server is started, open your browser and open the URL 'localhost:3000'



