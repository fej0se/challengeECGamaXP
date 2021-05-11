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

            "nomeDepto": "acessórios"

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

//Retorna o valor do patrimonio da empresa
function getPatrimony(products){
    let total = 0
    products.forEach((product) => {
        if (product.disponivel == 'sim'){
        total += (product.preco * product.qtdEstoque)
        }
    })
    return total.toFixed(2)
}

//Retorna o ticket médio dos produtos disponiveis em estoque
function ticketPatrimony(products){
    let sum = 0
    let quantItem = 0
    for (product of products) {
        if (product.disponivel == "sim"){
            sum += (product.preco * product.qtdEstoque)
            quantItem += product.qtdEstoque
        }
    }
    return (sum / quantItem).toFixed(2);
}

//testes

//console.log(getPatrimony(estoque))
//console.log(ticketPatrimony(estoque))

