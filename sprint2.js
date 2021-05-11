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

        "preco": 5000.00,

        "qtdEstoque": 3,

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

//Retorna produto de maior valor
function maxValue(products) {
    const max = products.reduce((prodX, prodY) => {
        if (prodX.preco > prodY.preco) {
            return prodX;
        } else {
            return prodY;
        }
    });
    return {produto: max.descricao, departamento: max.departamento.nomeDepto}
}

//Retorna produto de menor valor
function minValue(products) {
    const min = products.reduce((prodX, prodY) => {
        if (prodX.preco < prodY.preco) {
            return prodX;
        } else {
            return prodY;
        }
    })
    return {produto: min.descricao, departamento: min.departamento.nomeDepto}
}

//Quantidade de produtos em destaque
function featuredProducts(products) {
    let quant = 0;
    for (product of products) {
        if (product.emDestaque == "sim") {
            quant++;
        }
    }
    return quant;
}

//Retorna proutos em destaque
function listFeaturedProducts(products) {
    let newList = [];
    for (product of products) {
        if (product.emDestaque == "sim") {
            newList.push(product)
        }
    }
    return newList;
}

//Retorna ticket médio dos produtos em destaque disponiveis
function ticketFeaturedProducts(products) {
    let sum = 0
    let quantItem = 0
    for (product of products) {
        if (product.emDestaque == "sim"){
            sum += (product.preco * product.qtdEstoque)
            quantItem += product.qtdEstoque
        }
    }
    return (sum / quantItem).toFixed(2);
}

//testes

//console.log(maxValue(estoque));
//console.log(minValue(estoque));
//console.log(featuredProducts(estoque));
//console.log(listFeaturedProducts(estoque));
//console.log(ticketFeaturedProducts(estoque))