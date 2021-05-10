//estoque teste
const estoque = [
    {
        "codProduto": 1234,

        "descricao": "Computador Dell Inspiron XS 12000 8Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

        "preco": 3500.00,

        "qtdEstoque": 5,

        "disponivel": "sim",

        "emDestaque": "sim",

        "departamento": {

            "idDepto": 987,

            "nomeDepto": "Informatica e acessórios"

        }

    },
    {
        "codProduto": 1234,

        "descricao": "Computador Dell Inspiron XS 12000 16Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

        "preco": 3500.00,

        "qtdEstoque": 0,

        "disponivel": "nao",

        "emDestaque": "sim",

        "departamento": {

            "idDepto": 987,

            "nomeDepto": "Informatica e acessórios"

        }

    },
]

//Quantidade total de produtos cadastrados em estoque
function TotalProductsQuantity(products) {
    let quant = 0;
    for (product of products) {
        quant++;
    }
    console.log(`Quantidade de produtos em estoque: ${quant}`);
}
//Listar todos produtos do estoque
function ListProducts(products) {
    console.log("Listagem de produtos em estoque:")
    for (product of products) {
        console.log(`Código: ${product.codProduto} | Produto: ${product.descricao} | Quantidade: ${product.qtdEstoque} | Preço: ${product.preco}`);
    }
}

//Quantidade de produtos disponiveis (true) ou indisponiveis (false) no estoque
function DisponibilityProductsQuantity(products, disponibility) {
    let check
    let quant = 0
    if ((disponibility == undefined)) {
        console.log("O atributo disponibilidade não foi passado. Deve ser true ou false");
        return
    }
    disponibility ? check = 'sim' : check = 'nao';

    for (product of products) {
        if (product.disponivel == check) {
            quant++
        }
    }

    if (disponibility == true) {
        console.log(`Quantidade de produtos disponiveis: ${quant}`);
    } else if (disponibility == false) {
        console.log(`Quantidade de produtos indisponiveis: ${quant}`);
    }    
}

//Listar produtos disponiveis (true) ou indisponiveis (false) no estoque
function ListProductsWithDisponibility(products, disponibility) {
    let check

    if ((disponibility == undefined)) {
        console.log("O atributo disponibilidade não foi passado. Deve ser true ou false");
        return
    }
    if (disponibility == true) {
        check = "sim"
        console.log("Listagem de produtos disponiveis:");
    } else if (disponibility == false) {
        check = "nao"
        console.log("Listagem de produtos indisponiveis:");
    }    

    for (product of products) {
        if (product.disponivel == check) {
            console.log(`Código: ${product.codProduto} | Produto: ${product.descricao} | Quantidade: ${product.qtdEstoque} | Preço: ${product.preco}`);
        }
    }
}

//testes

TotalProductsQuantity(objeto);
DisponibilityProductsQuantity(objeto, false);
DisponibilityProductsQuantity(objeto, true);
ListProducts(objeto);
ListProductsWithDisponibility(objeto, true);
ListProductsWithDisponibility(objeto, false);