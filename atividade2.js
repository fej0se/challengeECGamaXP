const listaProdutos = require('./listaProdutos');

//Quantidade total de itens em estoque (somatória das quantidades de todos os produtos)
function totalProducts(products) {
    let quant = 0;
    for (product of products) {
        quant += product.qtdEstoque;
    }
    console.log(`total de produtos: ${quant}`);
}

totalProducts(listaProdutos);

//Quantidade total de itens em destaque (somatória das quantidades dos itens marcados como "emDestaque : sim")
function totalFeaturedProducts(products) {
    let quant = 0;
    for (product of products) {
        if (product.emDestaque == "sim") {
            quant += product.qtdEstoque;
        }
    }
    console.log(`total de produtos em destaque: ${quant}`);
}

totalFeaturedProducts(listaProdutos);

//Quantidade total de itens disponíveis (similar ao anterior)
function totalAvailableProducts(products) {
    let quant = 0;
    for (product of products) {
        if (product.disponivel == 'sim') {
            quant += product.qtdEstoque
        }
    }
    console.log(`total de produtos disponíveis: ${quant}`);
}

totalAvailableProducts(listaProdutos);

//Valor total do inventário da empresa (somatória dos valores individuais multiplicado pela quantidade em estoque)
function companyInventory(products){
    let total = 0
    products.forEach((product) => {
        if (product.disponivel == 'sim'){
        total += (product.preco * product.qtdEstoque)
        }
    })
    console.log(`total do inventário: ${total.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'})}`) 
}

companyInventory(listaProdutos);

//Somatória de itens por departamento (você deverá retornar um objeto contendo o nome do departamento e o total de itens nele)
function totalProductsByDepartament(products) {
    let deptos = [];
    for (let i = 0; i < products.length; i++) {
        let index = deptos.findIndex(val => val.departamento == products[i].departamento.nomeDepto)
        if (index < 0) {
            deptos.push({ departamento: products[i].departamento.nomeDepto, total: products[i].qtdEstoque })
        } else {
            deptos[index].total += products[i].qtdEstoque
        }
    }
    console.log(deptos);
}

totalProductsByDepartament(listaProdutos)

//Valor total do inventário por departamento (similar ao item anterior)
function departamentInventory(products) {
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
        depto.inventario = depto.inventario.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});

    }
    console.log(deptos);
}

departamentInventory(listaProdutos);

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
    console.log(`ticket médio: ${(sum / quantItem).toLocaleString('pt-br',{style: 'currency', currency: 'BRL'})}`);
}

ticket(listaProdutos)

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
        depto.ticket = (depto.valueTotal / depto.quantTotal).toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
        delete depto.valueTotal;
        delete depto.quantTotal
    }
    console.log(deptos);
}

departamentTicket(listaProdutos);

//Departamento mais valioso (qual o departamento que tem a maior somatória dos valores dos itens)
function mostValuableDepartament(products) {
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

    const mostValued = Math.max(...deptos.map(({ inventario }) => inventario))
    for (depto of deptos) {
        if (depto.inventario == mostValued) {
            console.log(`Departamento mais valioso: ${depto.departamento}`)
        }
    }
}

mostValuableDepartament(listaProdutos);

//Produto mais caro da loja (bem como seu departamento)
function highestValuedProduct(products) {
    const max = products.reduce((prodX, prodY) => {
        if (prodX.preco > prodY.preco) {
            return prodX;
        } else {
            return prodY;
        }
    });
    console.log(`Produto mais caro da loja: ${max.descricao}, departamento: ${max.departamento.nomeDepto}`);
}

highestValuedProduct(listaProdutos);

//Produto mais barato da loja (bem como seu departamento)
function lowestValuedProduct(products) {
    const min = products.reduce((prodX, prodY) => {
        if (prodX.preco < prodY.preco) {
            return prodX;
        } else {
            return prodY;
        }
    })
    console.log(`Produto mais barato da loja: ${min.descricao}, departamento: ${min.departamento.nomeDepto}`);
}

lowestValuedProduct(listaProdutos);