Po ověření na nepájevém poli může být pokročeno k dalšímu kroku. Návrh PCB. Samotný tištěný spoj se bude skládat z pěti částí:
	1. Napájení
		1. baterie
		2. balancování baterií
		3. nabíjení baterií
		4. měření napětí na bateriích
		5. aktivace motorů
		6. nastavení správného napětí s ochranou proti přetížení, zkratu a napěťovým špičkám
	2. H můstek
		1. Ovládá chod motorů, jejich rychlost a směr
		2. Největším problémem zde byla nemožnost ovládat 12V můstek napřímo pře ESP32.
	3. Vstup přes USB C
	4. Motory
	5. Logická část
		1. ESP32
		2. Senzory
		3. SD karta

## Napájení
celkem přímočarý proces

## H Můstek
Jako reference pro design byl použit článek https://www.modularcircuits.com/blog/articles/h-bridge-secrets/h-bridges-the-basics/

