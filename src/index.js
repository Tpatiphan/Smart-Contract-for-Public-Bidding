var Web3 = require('web3');
var web3 = new Web3(new Web3.providers.HttpProvider('http://localhost:8545'));
//console.log(web3)
web3.eth.getAccounts(console.log);//public key

//console.log(web3);
function Warn() {
    if(web3.eth.isSyncing().then(console.log)==false)
    {
        alert("block yok");
    }    
}
web3.eth.defaultAccount = '0x9Eb5410e156E27Ca5F608611bbfF4D27b7543879';
web3 . eth . getBalance ( '0x9Eb5410e156E27Ca5F608611bbfF4D27b7543879' )
. then ( console . log );// para çekme


web3 . eth . sendTransaction ({ //send traction
    from : '0x9Eb5410e156E27Ca5F608611bbfF4D27b7543879' ,
    to : '0xb02089163F7Be745742897fC85E95108AbAA4d83' ,
    value : '1000000000000000'
});