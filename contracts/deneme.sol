pragma solidity ^0.5.8;
pragma experimental ABIEncoderV2;

contract ihale_t{
    struct Ihale{
        uint8 ihaleAcanSirketId;
        string isTanimi;
        string sartname;
        uint256 tarih;
        uint64 toplamButce;
        address this;
        uint64 toplamOdeme;
        
    }
    struct Sirket{
        uint8 id;
        string sirketAdi;
        uint64 sermaye;
        uint8 altIhaleId;
        string telNo;
        string mail;
        string faxNo;
        string adress;
        address sirketPublicKey;
        
    }
    struct AltIhale{
        address sirketPublicKey;
        uint256 baslangiczamani;
        uint256 bitiszamani;
        uint64 fiyatmin;
        uint64 fiyat;
        bool bitti;
    }
    AltIhale[] altIhaleler; 
    Sirket[] ihaleyeGirecekSirketler;
    Ihale ihale;
    uint8 sirketIndex=0;
    mapping ( uint8=> address) sirketPubtoIndex;
    mapping (uint8 => uint8)   yetkisiIdtoSirket;
    function createSirket(string memory sirketAdi,uint64 sermaye,uint8 altIhaleId,string memory telNo,string memory mail,string memory faxNo,string memory adres,address sirketPublicKey) public {
        ihaleyeGirecekSirketler.push(Sirket(sirketIndex,sirketAdi,sermaye,altIhaleId,telNo,mail,faxNo,adres,sirketPublicKey));
        sirketPubtoIndex[sirketIndex]=sirketPublicKey;
        sirketIndex++;
    }
    function createIhale(uint8 ihaleAcanSirketId,string memory isTanimi,string memory sartname,uint256  tarih, address ihalePublicKey) public {
        ihale=Ihale(ihaleAcanSirketId,isTanimi,sartname,tarih,0,ihalePublicKey,0);
    }
    function addAltIhale(address sirketPublicKey,uint256 baslangiczamani,uint256 bitiszamani,uint64 fiyatmin)public {
        altIhaleler.push(AltIhale(sirketPublicKey,baslangiczamani,bitiszamani,fiyatmin,0,false));
    }
    function getTeklifler(uint8 teklifIndex,address teklifSirketPublicKey,uint64 teklif) public{
        if(altIhaleler[teklifIndex].fiyatmin<teklif&&altIhaleler[teklifIndex].fiyat<teklif){
            altIhaleler[teklifIndex].sirketPublicKey=teklifSirketPublicKey;
        }
    }
}