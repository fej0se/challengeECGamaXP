const listaProdutos = require('../listaProdutos');

//Retorna soma dos itens de cada produto cadastrados em estoque
function totalProductsQuantity(products) {
    let quant = 0;
    for (product of products) {
        quant += product.qtdEstoque;
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
function productQuantityWithFilters(products, disponibility) {
    let check;
    let quant = 0;

    if ((disponibility != true) && (disponibility != false)) {
        return
    }

    disponibility ? check = 'sim' : check = 'nao';

    for (product of products) {
        if (product.disponivel == check) {
            quant += product.qtdEstoque;
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

//console.log(totalProductsQuantity(listaProdutos));
//console.log(listProducts(listaProdutos));
//console.log(productQuantityWithFilters(listaProdutos, true));
//console.log(productQuantityWithFilters(listaProdutos, false));
//console.log(listProductsWithFilters(listaProdutos, true));
//console.log(listProductsWithFilters(listaProdutos, false));