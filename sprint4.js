//estoque teste
const objeto = [
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

        "qtdEstoque": 2,

        "disponivel": "sim",

        "emDestaque": "sim",

        "departamento": {

            "idDepto": 987,

            "nomeDepto": "acessórios"

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

            "nomeDepto": "test"

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

        "preco": 1000.00,

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

            "nomeDepto": "acessórios"

        }

    },
]

//retorna quantidade de produtos cadastrados nos departamentos
function totalQtdByDepartament(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(array => array.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, total: 1 })
        } else {
            deptos[index].total++
        }
    }
    return deptos
}

//retorna produtos de um determinado departamento
function listProductsByDepartament(products, departament) {
    let productsByDepartament = []
    for (product of products) {
        if (product.departamento.nomeDepto == departament) {
            productsByDepartament.push(product)
        }
    }
    return productsByDepartament
}

//retorna inventario de um departamento
function departamentPatrimony(products, departament) {
    let total = 0
    for (product of products) {
        if ((product.departamento.nomeDepto == departament) & (product.disponivel == 'sim')) {
            total += product.preco * product.qtdEstoque
        }
    }
    return total.toFixed(2)
}

//retorna departamentos e o ticket médio de cada um
function departamentTicket(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(array => array.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, total: products[i].preco, quant: products[i].qtdEstoque})
        } else {
            deptos[index].total += products[i].preco
            deptos[index].quant += products[i].qtdEstoque
        }
    }
    for(depto of deptos) {
        depto.ticket = (depto.total / depto.quant).toFixed(2)
        delete depto.total;
        delete depto.quant
    }
    return deptos;
}

//retorna o departamento mais valioso
function mostValuedDepartament(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(array => array.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, inventory: products[i].preco })
        } else {
            deptos[index].inventory += products[i].preco
        }
    }
    const mostValued = Math.max(...deptos.map(({ inventory }) => inventory))
    for (depto of deptos) {
        if (depto.inventory == mostValued) {
            return depto.departamento
        }
    }
}

//retorna o valor do produto mais caro ou barato da loja e o seu departamento
function maxOrMinProductValueOfAnDepartament(products, departament, maxOrMin) {
    let filteredProducts = [];
    for (product of products) {
        if (product.departamento.nomeDepto == departament) {
            filteredProducts.push({ nome: product.descricao, valor: product.preco, departamento: product.departamento.nomeDepto });
        }
    }

    const maxValued = Math.max(...filteredProducts.map(({ valor }) => valor))
    const minValued = Math.min(...filteredProducts.map(({ valor }) => valor))

    if (maxOrMin == 'max') {
        for (prod of filteredProducts) {
            if (prod.valor == maxValued) {
                return {produto: prod.nome, departamento: prod.departamento}
        }
    }
}
    if (maxOrMin == 'min') {
        for (prod of filteredProducts) {
            if (prod.valor == minValued) {
                return {produto: prod.nome, departamento: prod.departamento}
            }
        }
    }
}

//testes

//console.log(totalQtdByDepartament(objeto))
//console.log(listProductsByDepartament(objeto, 'test'))
//console.log(departamentPatrimony(objeto, 'acessórios'))
//console.log(departamentTicket(objeto, 'acessórios'))
//console.log(mostValuedDepartament(objeto))
//console.log(maxOrMinProductValueOfAnDepartament(objeto, 'acessórios', 'max'))
//console.log(maxOrMinProductValueOfAnDepartament(objeto, 'Informatica e acessórios', 'min'))
