pragma solidity ^0.5.10;
//pragma experimental ABIEncoderV2;
contract ihale_t{
    struct Ihale{
        address ihaleAcanSirketPubKey;
        string isTanimi;
        string sartname;
        address sirketPublicKey;
        uint256 baslangiczamani;
        uint256 bitiszamani;
        uint64 fiyatmin;
        uint64 fiyat;
        bool bitti;
    }
    Ihale ihale;
    uint8 sirketIndex=0;
    function createIhale(address ihaleAcanSirketPubKey,string memory isTanimi,string memory sartname,uint256  baslangiczamani,uint256  bitiszamani,uint64 fiyatmin, address sirketPublicKey) public {
        ihale=Ihale(ihaleAcanSirketPubKey,isTanimi,sartname,sirketPublicKey,baslangiczamani,bitiszamani,fiyatmin,0,false);
    }
    function getTeklifler(address teklifSirketPublicKey,uint64 teklif) public{
        if(ihale.fiyatmin<teklif&&ihale.fiyat<teklif){
            ihale.fiyat=teklif;
            ihale.sirketPublicKey=teklifSirketPublicKey;
        }
        
    }
    function getBalance(address pubkey) public view returns(uint256){
          return pubkey.balance;
    }
    function deposit(uint256 amount) payable public {
        require(msg.value == amount);
        // nothing else to do!
    }
    function withdraw() public {
        msg.sender.transfer(10);
    }
    function getmsgsender() public view returns(address)  {
        return msg.sender;
    }
    function getContractAddress() public view returns(address){
        return address(this);
    }
}