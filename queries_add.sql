-- inserção de dados e queries
use ecommerce;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Adress
insert into Clients (Fname, Minit, Lname, CPF, Adress)
			values('Maria', 'J', 'Silva', 12345678912, 'rua das Flores 45, Savassi - Belo Horizonte'),
				('João', 'P', 'Costa', 72345678912, 'rua das Rosas 145, Santa Tereza - São Paulo'),
				('Flora', 'R', 'Silva', 92345678912, 'rua das Margaridas 78, União - Belo Horizonte');
                
-- idProduct, Pname, classification_kids boolean, category(''Eletrônico', 'Vestimenta', 'Brinquedo', 'Alimentos', 'Móveis'),avaliação,size
insert into product (Pname, classification_kids, category, avaliação, size) values
			('Fone de ouvido',false,'Eletrônico','4',null),
            ('Camiseta',true,'Vestimenta','5',null),
            ('Caminhão',true,'Brinquedo','9',null);
            
select * from clients;
select * from product;            
-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue,paymentCash
 
 delete from orders where idOrderClient in (1,2,3,4);
insert into orders ( idOrderClient, orderStatus, orderDescription, sendValue,paymentCash) values
					(1,default,'compra via aplicativo',null,1),
                    (2,default,'compra via aplicativo',null,50,0),
                    (3,'Confirmado',null,null,1),
                    (4,default,'compra via site',150,0);
                    
-- idPOproduct,idPOorder,poQuantity,poStatus
select * from orders;
insert into productOrder (idPOproduct,idPOorder,poQuantity,poStatus) values
				(1,5,2,null),
                (2,5,1,null),
                (3,6,1,null);
                
-- storageLocation,quantity
insert into productStorage (storageLocation,quantity) values
						('Belo Horizonte', 1000),
                        ('BeloHorizonte', 500);
                        
-- idLproduct,idLstorage,location 
insert into instorageLocation(idLproduct,idLstorage,location) values
			(1,2,MG),
			(2,6,MG);

-- idSupplier,SocialName, CNPJ, contact
insert into supplier (SocialName, CNPJ, contact) values
			('Filhos & Filhos',123456789123,'33334547'),
			('Cia & Filhos',123456789145,'33335858');
--  idPsSupplier,idPsproduct,quantity  
insert into productSupplier (idPsSupplier,idPsproduct,quantity) values
				(1,1,500),			
                (1,2,400),
				(2,4,600),
                (3,3,5),
                (2,5,10);
                
-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact  
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
			('Kids World',null,123456789123,null, 'Belo Horizonte','33334547'),
			('Tech Games',null,123456789154,null, 'Belo Horizonte','33335858');
            
select * from seller;
-- idPSeller,idPproduct,prodQuantity
insert into productSeller (idPSeller,idPproduct,prodQuantity) values
			(1,6,80),
            (2,7,10);

select * from productSeller;            
 
 select count(*) from clients;
select * from clients c, orders o where c.idClient = idOrderClient;

		
		