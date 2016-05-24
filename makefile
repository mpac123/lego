FILENAME=nowe2
ADDRESS=00:16:53:14:34:00

all:
	#nxtrc -a $(ADDRESS) -d plik.txt
	nbc -O=$(FILENAME).rxe $(FILENAME).nxc
	nxtrc -a $(ADDRESS) -d $(FILENAME).rxe
	sleep 1
	nxtrc -a $(ADDRESS) -w $(FILENAME).rxe
	sleep 1
	echo -e "\a"


run:
	nxtrc -a $(ADDRESS) -p $(FILENAME).rxe

stop:
	nxtrc -a $(ADDRESS) -k 

readfile:
	nxtrc -a $(ADDRESS) -r "plik.txt"
	
	
