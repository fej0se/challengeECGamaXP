const listaProdutos = require('./listaProdutos');

//Quantidade total de itens em estoque (somatória das quantidades de todos os produtos)
function totalProductsQuantity(products) {
    let quant = 0;
    for (product of products) {
        quant += product.qtdEstoque;
    }
    return quant;
}

console.log(totalProductsQuantity(listaProdutos))

//Quantidade total de itens em destaque (somatória das quantidades dos itens marcados como "emDestaque : sim")
function featuredProducts(products) {
    let quant = 0;
    for (product of products) {
        if (product.emDestaque == "sim") {
            quant += product.qtdEstoque;
        }
    }
    return quant;
}

console.log(featuredProducts(listaProdutos))

//Quantidade total de itens disponíveis (similar ao anterior)
function productQuantityWithFilters(products) {
    let quant = 0;
    for (product of products) {
        if (product.disponivel == 'sim') {
            quant += product.qtdEstoque
        }
    }

    return quant;
}

console.log(productQuantityWithFilters(listaProdutos))

//Valor total do inventário da empresa (somatória dos valores individuais multiplicado pela quantidade em estoque)
function getPatrimony(products){
    let total = 0
    products.forEach((product) => {
        if (product.disponivel == 'sim'){
        total += (product.preco * product.qtdEstoque)
        }
    })
    return total.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
}

console.log(getPatrimony(listaProdutos))

//Somatória de itens por departamento (você deverá retornar um objeto contendo o nome do departamento e o total de itens nele)
function totalQtdByDepartament(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(val => val.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, total: products[i].qtdEstoque })
        } else {
            deptos[index].total += products[i].qtdEstoque
        }
    }
    return deptos
}

console.log(totalQtdByDepartament(listaProdutos))

//Valor total do inventário por departamento (similar ao item anterior)
function departamentPatrimony(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(array => array.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, inventario: (products[i].preco * products[i].qtdEstoque)})
        } else {
            deptos[index].inventario += (products[i].preco * products[i].qtdEstoque)
        }
    }
    for(depto of deptos) {
        depto.inventario = depto.inventario.toFixed(2);

    }
    return deptos;
}

console.log(departamentPatrimony(listaProdutos))

//Valor do ticket médio dos produtos da empresa (basicamente o valor total do inventário dividido pelo número de itens)
function ticket(products){
    let sum = 0
    let quantItem = 0
    for (product of products) {
        if (product.disponivel == "sim"){
            sum += (product.preco * product.qtdEstoque)
            quantItem += product.qtdEstoque
        }
    }
    return (sum / quantItem).toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});;
}

console.log(ticket(listaProdutos))

//Ticket médio por departamento (similar ao item anterior, porém retornando uma lista de objetos que contenha o nome do departamento e o seu ticket médio)
function departamentTicket(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(array => array.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, valueTotal: (products[i].preco * products[i].qtdEstoque), quantTotal: products[i].qtdEstoque})
        } else {
            deptos[index].valueTotal += (products[i].preco * products[i].qtdEstoque)
            deptos[index].quantTotal += products[i].qtdEstoque
        }
    }
    for(depto of deptos) {
        depto.ticket = (depto.valueTotal / depto.quantTotal).toFixed(2);
        delete depto.valueTotal;
        delete depto.quantTotal
    }
    return deptos;
}

console.log(departamentTicket(listaProdutos))

//Departamento mais valioso (qual o departamento que tem a maior somatória dos valores dos itens)
function mostValuedDepartament(products) {
    let deptos = departamentPatrimony(products);
    const mostValued = Math.max(...deptos.map(({ inventario }) => inventario))
    for (depto of deptos) {
        if (depto.inventario == mostValued) {
            return `Departamento mais valioso: ${depto.departamento}`
        }
    }
}

console.log(mostValuedDepartament(listaProdutos))

//Produto mais caro da loja (bem como seu departamento)
function maxValue(products) {
    const max = products.reduce((prodX, prodY) => {
        if (prodX.preco > prodY.preco) {
            return prodX;
        } else {
            return prodY;
        }
    });
    return `Produto mais caro da loja: ${max.descricao}, departamento: ${max.departamento.nomeDepto}`
}

console.log(maxValue(listaProdutos))

//Produto mais barato da loja (bem como seu departamento)
function minValue(products) {
    const min = products.reduce((prodX, prodY) => {
        if (prodX.preco < prodY.preco) {
            return prodX;
        } else {
            return prodY;
        }
    })
    return `Produto mais barato da loja: ${min.descricao}, departamento: ${min.departamento.nomeDepto}`
}

console.log(minValue(listaProdutos))