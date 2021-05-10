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

//Retorna produto de maior valor
function MaxValue(products) {
    const max = products.reduce((prodX, prodY) => {
        if (prodX.preco > prodY.preco) {
            return prodX
        } else {
            return prodY
        }


    })
    console.log(`Produto de maior valor: ${max.descricao} | valor: R$ ${(max.preco).toFixed(2)}, e pertence ao departamento: ${max.departamento.nomeDepto}`)
}

//Retorna produto de menor valor
function MinValue(products) {
    const min = products.reduce((prodX, prodY) => {
        if (prodX.preco < prodY.preco) {
            return prodX
        } else {
            return prodY
        }


    })
    console.log(`Produto de menor valor: ${min.descricao} | valor: R$ ${(min.preco).toFixed(2)}, e pertence ao departamento: ${min.departamento.nomeDepto}`)
}

//Quantidade de produtos em destaque
function FeaturedProducts(products) {
    let quant = 0;
    for (product of products) {
        if (product.emDestaque == "sim") {
            quant++;
        }
    }
    console.log(`Quantidade de produtos em destaque ${quant}`);
}

//Retorna lista de proutos em destaque
function ListFeaturedProducts(products) {
    console.log("Listando produtos em destaque:")
    for (product of products) {
        if (product.emDestaque == "sim") {
            console.log(`Código: ${product.codProduto} | Produto: ${product.descricao} | Quantidade: ${product.qtdEstoque} | Preço: ${product.preco}`);
        }
    }
}

//Retorna ticket médio dos produtos em destaque
function TicketFeaturedProducts(products) {
    let sum = 0
    let quant = 0
    for (product of products) {
        if (product.emDestaque == "sim"){
            quant++
            sum += product.preco
        }
    }
    console.log(`Ticket médio dos produtos em destaque: R$ ${(sum / quant).toFixed(2)}`)
}

MaxValue(objeto)
MinValue(objeto)
FeaturedProducts(objeto)
ListFeaturedProducts(objeto)
TicketFeaturedProducts(objeto)