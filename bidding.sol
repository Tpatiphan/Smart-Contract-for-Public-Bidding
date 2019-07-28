pragma solidity ^0.5.10;
contract ihale_t{
    struct sirket{
        uint8 id;
        string sirketAdi;
        uint8 yetkiliKisiId;
        uint64 sermaye;
        uint8 altIhaleId;
        string telNo;
        string mail;
        string faxNo;
        string adress;
        address sirketPublicKey;
    }
    
    struct Ihale{
        uint8 id;
        uint8 ihaleAcanSirketId;
        string isTanimi;
        string sartname;
        uint256 tarih;
        uint64 toplamButce;
        AltIhaleler[] altihaleler; 
        address ihalePublicKey;
        uint64 toplamOdeme;
    }
    struct Person{
        uint8 id;
        string ad;
        string dogumTarihi;
        string unvan;
        string mail;
        string telNo;
    }
    struct AltIhaleler{
        uint8 id;
        address sirketPublicKey;
        uint256 baslangiczamani;
        uint256 bitiszamani;
        uint64 butceMin;
        uint64 odemeMax;
        uint64 S_Butce;
        uint64 S_Odeme;
    }
    
}