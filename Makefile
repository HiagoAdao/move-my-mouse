.PHONY: run

clean:
	-rm -rf ./__pycache__

install:
	-pip3 install -r requirements.txt

run:
	-python3 main.py -m $(MINUTES)

help:
	-python3 main.py -h