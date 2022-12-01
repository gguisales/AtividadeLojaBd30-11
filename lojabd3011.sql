CREATE DATABASE loja;
USE loja;



CREATE TABLE categoria(
cd INT PRIMARY KEY
AUTO_INCREMENT,
nome VARCHAR(100)
);



CREATE TABLE produto(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR( 120),
qtd INT(10),
valor DECIMAL(10,2),
id_categoria INT,
FOREIGN KEY (id_categoria)
REFERENCES categoria(cd)
);



CREATE TABLE vendedor(
cd INT PRIMARY KEY
AUTO_INCREMENT,
nome VARCHAR(100),
salario DECIMAL(10,2)
);



CREATE TABLE estado(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
sigla CHAR(2)
);



CREATE TABLE cidade(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
id_estado INT,
FOREIGN KEY (id_estado) REFERENCES estado(cd)
);



CREATE TABLE cliente(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
telefone VARCHAR(100),
sexo CHAR(1),
status CHAR(8),
id_cidade INT,
FOREIGN KEY (id_cidade) REFERENCES cidade(cd)
);



CREATE TABLE pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_vendedor INT,
dt_pedido DATE,
vl_total DECIMAL(10,2),
FOREIGN KEY (id_cliente) REFERENCES cliente(cd),
FOREIGN KEY (id_vendedor) REFERENCES vendedor(cd)
);



CREATE TABLE item_pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT,
id_produto INT,
qt_produto INT,
vl_unitario DECIMAL(10,2),
FOREIGN KEY (id_pedido) REFERENCES pedido(cd),
FOREIGN KEY (id_produto) REFERENCES produto(cd)
);

/** / Insert categorias /**/

insert into categoria values(null, "elétrica") ;
insert into categoria values(null, "hidráulica") ;
insert into categoria values(null, "ferragem") ;
insert into categoria values(null," construção") ;
insert into categoria values(null, "ferramentas");

/** / Insert Produtos por categoria /**/

insert into produto values (null,"fita isolante",30,"10.00",1);
insert into produto values (null,"fio flexivel",50,"30.00",1);
insert into produto values (null,"conjunto tomada",10,"20.00",1);
insert into produto values (null,"canduite",70,"15.00",1);
insert into produto values (null,"lampada",50,"9.00",1);

insert into produto values (null, "cano pvc",40,"10.00",2);
insert into produto values (null, "fita veda rosca",30,"12.00",2);
insert into produto values (null, "mangueira",30,"15.00",2);
insert into produto values (null, "torneira",30,"30.00",2);
insert into produto values (null, "chuveiro",20,"55.00",2);

insert into produto values (null, "coluna armada",10,"35.00",3);
insert into produto values (null, "ferro-12mm",30,"20.00",3);
insert into produto values (null, "trinca",25,"45.00",3);
insert into produto values (null, "ferro-30mm",10,"50.00",3);
insert into produto values (null, "vergalhão",10,"30.00",3);

insert into produto values (null, "areia-1 metro",300,"90.00",4);
insert into produto values (null, "bloco",50,"45.00",4);
insert into produto values (null, "cimento-1 metro",30,"50.00",4);
insert into produto values (null, "argamassa",20,"30.00",4);
insert into produto values (null, "pedra-1 metro",50,"60.00",4);

insert into produto values (null, "alicate",30,"25.00",5);
insert into produto values (null, "chave de fenda",25,"40.00",5);
insert into produto values (null, "colher reta",20,"40.00",5);
insert into produto values (null, "maleta",15,"25.00",5);
insert into produto values (null, "chave philips",20,"40.00",5);

/** / Insert vendedores /**/

insert into vendedor values (null,"João","1002.00");
insert into vendedor values (null,"Julia","900.00");
insert into vendedor values (null,"Mario","1100.00");

/** / Insert Estados /**/ 

insert into estado values (null,"Rio de Janeiro","RJ");
insert into estado values (null,"São Paulo","SP");
insert into estado values (null,"Santa Catarina","SC");

/** / Insert Cidade -> Estado /**/

insert into cidade values (null,"Niteroi",1);
insert into cidade values (null,"cabo frio",1);
insert into cidade values (null,"Duque de Caxias",1);

insert into cidade values (null,"São Paulo",2);
insert into cidade values (null,"Santos ",2);
insert into cidade values (null,"Peruibe ",2);

insert into cidade values (null,"Florianopolis",3);
insert into cidade values (null,"Itajaí",3);
insert into cidade values (null,"Brusque",3);

/** / insert Cliente /**/ 

insert into cliente values (null,"cliene_1","number_usuario1","F","Inativo",1);
insert into cliente values (null,"cliene_2","number_usuario2","M","Inativo",2);
insert into cliente values (null,"cliene_3","number_usuario3","M","Ativo",3);
insert into cliente values (null,"cliene_4","number_usuario4","F","Inativo",4);
insert into cliente values (null,"cliene_5","number_usuario5","M","Ativo",5);
insert into cliente values (null,"cliene_6","number_usuario6","M","Inativo",6);
insert into cliente values (null,"cliene_7","number_usuario7","F","Inativo",7);
insert into cliente values (null,"cliene_8","number_usuario8","M","Ativo",8);
insert into cliente values (null,"cliene_9","number_usuario9","M","Inativo",9);

/** / Insert Pedidos /**/
/** /1/**/ 

insert into pedido values (null,1,2,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /2/**/ 

insert into pedido values (null,1,2,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /3/**/ 

insert into pedido values (null,1,2,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /4/**/ 

insert into pedido values (null,1,3,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /5/**/ 

insert into pedido values (null,1,3,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /6/**/ 

insert into pedido values (null,1,3,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /7/**/ 

insert into pedido values (null,1,1,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /8/**/ 

insert into pedido values (null,1,1,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /9/**/ 

insert into pedido values (null,1,1,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");
/** /10/**/ 

insert into pedido values (null,1,1,"2022-05-12","100.00");
insert into item_pedido values (null,1,1,2,"100.00");
insert into item_pedido values (null,1,2,30,"400.00");