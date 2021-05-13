const listaProdutos = require('../listaProdutos');

//Retorna o valor do patrimonio da empresa
function getPatrimony(products){
    let total = 0
    products.forEach((product) => {
        if (product.disponivel == 'sim'){
        total += (product.preco * product.qtdEstoque)
        }
    })
    return total.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});
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
    return (sum / quantItem).toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});;
}


//testes

//console.log(getPatrimony(listaProdutos));
//console.log(ticketPatrimony(listaProdutos));

