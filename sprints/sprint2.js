const listaProdutos = require('./listaProdutos');

//Retorna produto de maior valor
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

//Retorna produto de menor valor
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

//Quantidade de produtos em destaque
function featuredProducts(products) {
    let quant = 0;
    for (product of products) {
        if (product.emDestaque == "sim") {
            quant += product.qtdEstoque;
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

//console.log(maxValue(listaProdutos));
//console.log(minValue(listaProdutos));
//console.log(featuredProducts(listaProdutos));
//console.log(listFeaturedProducts(listaProdutos));
//console.log(ticketFeaturedProducts(listaProdutos));