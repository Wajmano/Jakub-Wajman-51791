#!/bin/bash
<<<<<<< Updated upstream
show_date(){
    date
}

create_log(){
    for i in $(seq 1 $1); do
        echo "log$i.txt - Utworzone przez skrypt skrypt.sh w dniu $(date)" > "log$i.txt"
    done
}

show_help(){
    echo "Dostepne opcje:"
    echo "--date wyswietli dzisiejsza date"
    echo "--logs utworzy automatycznie 100 plikow logx.txt, x numer pliku od 1 100"
    echo "--logs 30 utworzenie automatycznie 30 plikow, analogicznie jak wyzej, ale z obsluga argumentu liczby plikow"
    echo "--help wyswietlenie wszystkich dostepnych opcji"
}

case "$1" in
    --date)
    show_date
    ;;
    --logs)
    count=${2:-100}
    create_log $count
    ;;
    --help)
    show_help
    ;;
    *)
    echo "Nieznana opcja: $1"
    show_help
=======

pokaz_date(){
    date
}

stworz_logi(){
    for i in $(seq 1 $1); do
        echo "log$i.txt - Utworzone przez skrypt script.sh dnia $(date)" > "log$i.txt"
    done
}

pokaz_pomoc(){
    echo "Dostępne opcje:"
    echo "--date, -d: wyświetl dzisiejszą datę"
    echo "--logs, -l: utwórz 100 plików dziennika logi.txt, ponumerowanych od 1 do 100"
    echo "--logs 30, -l 30: utwórz określoną liczbę plików dziennika, podobnie jak powyżej, ale z możliwością określenia liczby plików"
    echo "--help, -h: wyświetl wszystkie dostępne opcje"
    echo "--init, -i: sklonuj repozytorium"
    echo "--error, -e: utwórz pliki błędów errorx/errorx.txt"
}

inicjalizuj_repozytorium() {
    git clone https://github.com/Wajmano/Jakub-Wajman-51791/blob/main/skrypt.sh
    nazwa_repo=$(basename "https://github.com/Wajmano/Jakub-Wajman-51791/blob/main/skrypt.sh" .git)
    export PATH=$PATH:$(pwd)/$nazwa_repo
    echo "Repozytorium $nazwa_repo zostało sklonowane i dodane do PATH"
}

stworz_bledy(){
    mkdir -p errorx
    for i in $(seq 1 ${1:-100}); do
        echo "error$i.txt - utworzone przez skrypt script.sh" > "errorx/error$i.txt"
    done
}

case "$1" in
    --date|-d)
    pokaz_date
    ;;
    --logs|-l)
    ilosc=${2:-100}
    stworz_logi $ilosc
    ;;
    --help|-h)
    pokaz_pomoc
    ;;
    --error|-e)
    ilosc=${2:-100}
    stworz_bledy $ilosc
    ;;
    --init|-i)
    inicjalizuj_repozytorium
    ;;
    *)
    echo "Nieznana opcja: $1"
    pokaz_pomoc
>>>>>>> Stashed changes
    ;;
esac
