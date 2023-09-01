-- inserção de dados e queries
use ecommerce;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into Clients (Fname, Minit, Lname, CPF, Address) 
	   values('Silvia','B','Shevchenko', 12346789, 'rua faria lima 73, Carangola - Gotham City'),
		     ('Leandro','S','Ibrahimovic', 987654321,'rua long john silver 1700, Centro - Cidade City'),
			 ('Carla','O','Jessica', 45678913,'avenida alameda dos anjos 1009, Parque Industrial - Madripoor'),
			 ('Roberta','Y','Rebeca', 789123456,'rua sokovia 861, Centro - Nova New'),
			 ('Erica','C','Amanda', 98745631,'avenidade ian koller 206, Conjunto - Cidade das flores'),
			 ('Alex','B','Capitale', 654789123,'rua dos vingadores 28, Centro - Nuevo New');


-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size
insert into product (Pname, classification_kids, category, avaliação, size) values
							  ('GoPro',false,'Eletrônico','4',null),
                              ('Barbie Elsa',true,'Brinquedos','3',null),
                              ('Body Carters',true,'Vestimenta','5',null),
                              ('Microfone Vedo - Youtuber',False,'Eletrônico','4',null),
                              ('Sofá retrátil',False,'Móveis','3','3x57x80'),
                              ('Farinha de arroz',False,'Alimentos','2',null),
                              ('Fire Stick Amazon',False,'Eletrônico','3',null);

select * from clients;
select * from product;
-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values 
							 (1, default,'compra via aplicativo',null,1),
                             (2,default,'compra via aplicativo',50,0),
                             (3,'Confirmado',null,null,1),
                             (4,default,'compra via web site',150,0);

-- idPOproduct, idPOorder, poQuantity, poStatus
select * from orders;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values 
						 (1,5,2,null),
                         (2,5,1,null),
                         (3,6,1,null);
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`ecommerce`.`productorder`, CONSTRAINT `fk_productorder_order` FOREIGN KEY (`idPOorder`) REFERENCES `orders` (`idOrder`))



-- storageLocation,quantity
insert into productStorage (storageLocation,quantity) values 
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);

-- idLproduct, idLstorage, location
insert into storageLocation (idLproduct, idLstorage, location) values
						 (1,2,'RJ'),
                         (2,6,'GO');

-- idSupplier, SocialName, CNPJ, contact
insert into supplier (SocialName, CNPJ, contact) values 
							('Almeida, filhos e netos', 123456789123456,'21985474'),
                            ('Eletrônicos Era só mais um Silva',854519649143457,'21985484'),
                            ('Eletrônicos Velma', 934567893934695,'21975474');
                            
select * from supplier;
-- idPsSupplier, idPsProduct, quantity
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						 (1,1,100),
                         (1,2,200),
                         (2,4,400),
                         (3,3,10),
                         (2,5,150);

-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values 
						('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
					    ('Botique Durgas',null,null,123456783,'Rio de Janeiro', 219567895),
						('Kids World',null,456789123654485,null,'São Paulo', 1198657484);

select * from seller;
-- idPseller, idPproduct, prodQuantity
insert into productSeller (idPseller, idPproduct, prodQuantity) values 
						 (1,6,80),
                         (2,7,10);