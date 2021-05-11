//estoque teste
const estoque = [
    {
        "codProduto": 1234,

        "descricao": "Computador Dell Inspiron XS 12000 8Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

        "preco": 3500.00,

        "qtdEstoque": 5,

        "disponivel": "sim",

        "emDestaque": "nao",

        "departamento": {

            "idDepto": 987,

            "nomeDepto": "Informatica e acessórios"

        }

    },
    {
        "codProduto": 1234,

        "descricao": "Computador Dell Inspiron XS 12000 16Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

        "preco": 4500.00,

        "qtdEstoque": 0,

        "disponivel": "nao",

        "emDestaque": "sim",

        "departamento": {

            "idDepto": 987,

            "nomeDepto": "Informatica e acessórios"

        }

    },
    {
        "codProduto": 1234,

        "descricao": "Computador Dell Inspiron XS 12000 8Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

        "preco": 3500.00,

        "qtdEstoque": 5,

        "disponivel": "sim",

        "emDestaque": "nao",

        "departamento": {

            "idDepto": 987,

            "nomeDepto": "Informatica e acessórios"

        }

    },
    {
        "codProduto": 1234,

        "descricao": "Computador Dell Inspiron XS 12000 16Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

        "preco": 4500.00,

        "qtdEstoque": 0,

        "disponivel": "nao",

        "emDestaque": "nao",

        "departamento": {

            "idDepto": 987,

            "nomeDepto": "Informatica e acessórios"

        }

    },
    {
        "codProduto": 1234,

        "descricao": "Computador Dell Inspiron XS 12000 8Gb RAM 1 TB HD Intel i5 4g NVidia 1080",

        "preco": 35000.00,

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

        "preco": 1500.00,

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
function totalProductsQuantity(products) {
    let quant = 0;
    for (product of products) {
        quant++;
    }
    return quant;
}
//Retorna todos produtos do estoque apenas com cod, nome, preco e quantidade
function listProducts(products) {
    let obj = [];
    for (product of products) {
        obj.push({Cod: product.codProduto, Nome: product.descricao, Preco: product.preco, Quantidade: product.qtdEstoque});
    }
    return obj;
}

//Quantidade de produtos disponiveis (true) ou indisponiveis (false) no estoque
function ProductQuantityWithFilters(products, disponibility) {
    let check;
    let quant = 0;

    if ((disponibility != true) && (disponibility != false)) {
        return
    }

    disponibility ? check = 'sim' : check = 'nao';

    for (product of products) {
        if (product.disponivel == check) {
            quant++
        }
    }

    return quant;
}

//Retorna produtos disponiveis (true) ou indisponiveis (false) no estoque
function listProductsWithFilters(products, disponibility) {
    let check
    let newList = []

    if ((disponibility != true) && (disponibility != false)) {
        return
    }

    disponibility ? check = 'sim' : check = 'nao';

    for (product of products) {
        if (product.disponivel == check) {
            newList.push(product)
        }
    }
    return newList;
}

//testes

//console.log(totalProductsQuantity(estoque))
//console.log(listProducts(estoque));
//console.log(ProductQuantityWithFilters(estoque, true))
//console.log(ProductQuantityWithFilters(estoque, false))
//console.log(listProductsWithFilters(estoque, true))
//console.log(listProductsWithFilters(estoque, false))