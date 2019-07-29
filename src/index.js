var Web3 = require('web3');
var web3 = new Web3(new Web3.providers.HttpProvider('http://localhost:8545'));
//console.log(web3)



function connectedControl()
{
    if(!web3.connected())
    {
        alert("Bağlantı sağlanamadı")
        console.log("not connected")
    }
}

web3.eth.getAccounts(console.log);//public key


//console.log(web3);
function BlockControl() {
    if(web3.eth.isSyncing().then(console.log)==false)
    {
        alert("block yok");
    }    
}
web3.eth.defaultAccount = '0x9Eb5410e156E27Ca5F608611bbfF4D27b7543879';
/*web3 . eth . getBalance ( '0x9Eb5410e156E27Ca5F608611bbfF4D27b7543879' )
. then ( console . log );// para çekme*/

function getMoney(address){
    web3 . eth . getBalance ( address )
    . then ( console . log );// para çekme
}

function sendTransaction(fromadress,toaddress) {
    web3 . eth . sendTransaction ({ //send traction
        from : fromadress,
        to : toaddress ,
        value : '1000000000000000'
    });
  }
  
  let toDo;

  window.addEventListener("load", () => {
    toDo = new ToDoClass();
  });
