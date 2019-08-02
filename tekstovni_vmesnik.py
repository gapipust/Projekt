import model

def izpis_statistike(igra):
    print("Število napak:", igra.stevilo_napacnih())
    print("Število pravilnih odgovorov:", igra.stevilo_pravilnih())

def izpis_igre(igra):
    izpis_statistike(igra)
    print("Trenutno vprašanje:", igra.trenutno_vprasanje())

def izpis_zmage(igra):
    if igra.zmaga():
        izpis_statistike(igra)
        print("Čestitke, zmagali ste!")

def izpis_poraza(igra):
    if igra.poraz():
        izpis_statistike(igra)
        print("Žal ste izgubili!")

def zahtevaj_vnos():
    odgovor = input("Vpiši odgovor: ")
    return odgovor.lower()

def pozeni_vmesnik():
    igra = model.nova_igra()
    while True:
        izpis_igre(igra)
        odgovor = zahtevaj_vnos()
        rezultat = igra.ugibaj(odgovor)
        if rezultat == model.NI_ODGOVORA:
            print("Prosimo vnesite odgovor!")
        elif rezultat == model.ZMAGA:
            izpis_zmage(igra)
            break
        elif rezultat == model.PORAZ:
            izpis_poraza(igra)
            break
        elif rezultat == model.PRAVILEN_ODGOVOR:
            print("Pravilno :)")
        elif rezultat == model.NAPACEN_ODGOVOR:
            print("Narobe :(")


if __name__ == "__main__":
    pozeni_vmesnik()