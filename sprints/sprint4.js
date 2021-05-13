const listaProdutos = require('../listaProdutos');

//retorna quantidade de produtos cadastrados nos departamentos
function totalQtdByDepartament(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(array => array.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, total: products[i].qtdEstoque })
        } else {
            deptos[index].total += products[i].qtdEstoque
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
    return total.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
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
        depto.ticket = (depto.total / depto.quant).toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
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

//console.log(totalQtdByDepartament(listaProdutos))
//console.log(listProductsByDepartament(listaProdutos, 'Adaptadores'))
//console.log(departamentPatrimony(listaProdutos, 'Games'))
//console.log(departamentTicket(listaProdutos))
//console.log(mostValuedDepartament(listaProdutos))
//console.log(maxOrMinProductValueOfAnDepartament(listaProdutos, 'Games', 'max'))
//console.log(maxOrMinProductValueOfAnDepartament(listaProdutos, 'Informatica', 'min'))