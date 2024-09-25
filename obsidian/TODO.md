1. elektro
	1. uart programmer
	2. řízení robota
		1. iic display
		2. iic kamera
		3. sensor
		4. 2x ultrasound sensor
		5. spi sd card
		6. leds
		7. 2x motor
		8. 16x servo
		9. 
	3. ovladač
		1. display
			1. nastavení trasy
			2. nastavení barviček
		2. rotary encoder
		3. 2x joystick


1. controller pro motory, rozhýbat základnu
	1. vybrat dost silné motory
	2. sepsat si veškeré sensory, nechat 2x spi (1x sd, 1x se uvidí)
	3. 2x H bridge dc motor driver (integrated to pcb), heatsink
	4. sehnat materiály, nechat si vyrobit PCB
	5. nadesignovat základní tvar robota
	6. robota sestavit
	7. naprogramovat
	8. přidat automatické hledání stabilního bodu
	9. zkusit zátěž
2. připojit ovladač, sd kartu a pohrát si se senzory
	1. navrhnout algorytmus pro orientaci v bludišti
	2. pro jízdu po čáře
	3. propojit ovladač a robota
	4. přidat display a rotary encoder
	5. 
3. přidat stojan a synchronizaci mezi ovladačem a robotem
	1. napájení na 230V
	2. automatické zahlášení nízké baterie, zeptání se, jestli má dojet do základny a dojet tam. \(za určitých podmínek)
	3. uart programming + jtag debugging
4. přidat na základnu matildu, pokud zbyde čas a vyjdou na to motory.
5. Try to implement real time kinematics system
	1. https://www.youtube.com/watch?v=Oc1LBFDj2MA
6. 
nabíjení usbC
kapacitní tlačítka
sensory teploty (zabrání přehřátí)

# Moduly
## Stabilita + data:
1. motor drivery
2. 3.3V zdroj
3. 5V zdroj
5. 2x rotary encoder
6. SPI SD card
7. SPI interface (another microocontroller)
8. uart debugger
9. uart/iic communication with another mitrochip
10. 
## Serva:



## motory:
https://www.aliexpress.com/item/1005004946433027.html?spm=a2g0o.productlist.main.1.6770795bUb8ReK&algo_pvid=826941bc-3349-4ee3-b50b-6cce33f3b4a7&algo_exp_id=826941bc-3349-4ee3-b50b-6cce33f3b4a7-0&pdp_npi=4%40dis%21USD%2135.26%2120.10%21%21%2135.26%2120.10%21%40211b6ce417264875527675054e8be4%2112000041532432120%21sea%21CZ%212922517037%21X&curPageLogUid=UL1l371WuyCe&utparam-url=scene%3Asearch%7Cquery_from%3A
https://www.aliexpress.com/item/1005006281943712.html?spm=a2g0o.productlist.main.3.6770795bUb8ReK&algo_pvid=826941bc-3349-4ee3-b50b-6cce33f3b4a7&algo_exp_id=826941bc-3349-4ee3-b50b-6cce33f3b4a7-1&pdp_npi=4%40dis%21USD%2125.81%2123.75%21%21%21182.25%21167.67%21%40211b6ce417264875527675054e8be4%2112000036596966935%21sea%21CZ%212922517037%21X&curPageLogUid=8e8J0b57LxlK&utparam-url=scene%3Asearch%7Cquery_from%3A
https://www.aliexpress.com/item/1005006930908050.html?spm=a2g0o.productlist.main.5.6770795bUb8ReK&algo_pvid=826941bc-3349-4ee3-b50b-6cce33f3b4a7&algo_exp_id=826941bc-3349-4ee3-b50b-6cce33f3b4a7-2&pdp_npi=4%40dis%21USD%2146.33%2131.04%21%21%2146.33%2131.04%21%40211b6ce417264875527675054e8be4%2112000041531213905%21sea%21CZ%212922517037%21X&curPageLogUid=4lVXCyBJy2HU&utparam-url=scene%3Asearch%7Cquery_from%3A
https://www.aliexpress.com/item/1005006217582753.html?spm=a2g0o.productlist.main.17.6770795bUb8ReK&algo_pvid=826941bc-3349-4ee3-b50b-6cce33f3b4a7&aem_p4p_detail=2024091604523211247285183383560016032414&algo_exp_id=826941bc-3349-4ee3-b50b-6cce33f3b4a7-8&pdp_npi=4%40dis%21USD%2117.58%2114.06%21%21%21124.15%2199.32%21%40211b6ce417264875527675054e8be4%2112000036325116708%21sea%21CZ%212922517037%21X&curPageLogUid=IjL2TlF6InFA&utparam-url=scene%3Asearch%7Cquery_from%3A&search_p4p_id=2024091604523211247285183383560016032414_6
https://www.aliexpress.com/item/1005005448314406.html?spm=a2g0o.productlist.main.13.6770795bUb8ReK&algo_pvid=826941bc-3349-4ee3-b50b-6cce33f3b4a7&aem_p4p_detail=2024091604523211247285183383560016032414&algo_exp_id=826941bc-3349-4ee3-b50b-6cce33f3b4a7-6&pdp_npi=4%40dis%21USD%2126.37%2114.50%21%21%21186.22%21102.42%21%40211b6ce417264875527675054e8be4%2112000034284853601%21sea%21CZ%212922517037%21X&curPageLogUid=n8OYYKRgVEHj&utparam-url=scene%3Asearch%7Cquery_from%3A&search_p4p_id=2024091604523211247285183383560016032414_4
https://www.aliexpress.com/item/1005006213989239.html?spm=a2g0o.productlist.main.35.6770795bUb8ReK&algo_pvid=826941bc-3349-4ee3-b50b-6cce33f3b4a7&aem_p4p_detail=2024091604523211247285183383560016032414&algo_exp_id=826941bc-3349-4ee3-b50b-6cce33f3b4a7-17&pdp_npi=4%40dis%21USD%217.03%215.62%21%21%2149.66%2139.73%21%40211b6ce417264875527675054e8be4%2112000041288625722%21sea%21CZ%212922517037%21X&curPageLogUid=TJZeDIWW95aF&utparam-url=scene%3Asearch%7Cquery_from%3A&search_p4p_id=2024091604523211247285183383560016032414_15
https://www.aliexpress.com/item/1005005002795906.html?spm=a2g0o.detail.pcDetailTopMoreOtherSeller.6.333a5haC5haCXK&gps-id=pcDetailTopMoreOtherSeller&scm=1007.40050.354490.0&scm_id=1007.40050.354490.0&scm-url=1007.40050.354490.0&pvid=49c981a3-af5b-46ce-b2c4-9cbc4da4f794&_t=gps-id:pcDetailTopMoreOtherSeller,scm-url:1007.40050.354490.0,pvid:49c981a3-af5b-46ce-b2c4-9cbc4da4f794,tpp_buckets:668%232846%238110%231995&pdp_npi=4%40dis%21USD%2118.54%2118.54%21%21%2118.54%2118.54%21%402103244b17264875764398643e663a%2112000031316719233%21rec%21CZ%212922517037%21X&utparam-url=scene%3ApcDetailTopMoreOtherSeller%7Cquery_from%3Ax
https://www.aliexpress.com/item/33016407097.html


___
less torque:
https://www.aliexpress.com/item/1005001688784519.html?spm=a2g0o.productlist.main.51.6039u1WZu1WZlA&algo_pvid=a3c6c6cf-84e3-46f2-abe6-8ea3d891fa6f&algo_exp_id=a3c6c6cf-84e3-46f2-abe6-8ea3d891fa6f-25&pdp_npi=4%40dis%21CZK%21737.29%21695.78%21%21%2131.79%2130.00%21%402103871e17265065485856013e1bce%2112000017140100799%21sea%21CZ%212922517037%21X&curPageLogUid=mnonjeNYovBz&utparam-url=scene%3Asearch%7Cquery_from%3A
https://www.aliexpress.com/item/1005001688784519.html?spm=a2g0o.productlist.main.51.6039u1WZu1WZlA&algo_pvid=a3c6c6cf-84e3-46f2-abe6-8ea3d891fa6f&algo_exp_id=a3c6c6cf-84e3-46f2-abe6-8ea3d891fa6f-25&pdp_npi=4%40dis%21CZK%21737.29%21695.78%21%21%2131.79%2130.00%21%402103871e17265065485856013e1bce%2112000017140100799%21sea%21CZ%212922517037%21X&curPageLogUid=mnonjeNYovBz&utparam-url=scene%3Asearch%7Cquery_from%3A
[asi ideální motor:](https://www.aliexpress.com/item/1005005911770965.html?spm=a2g0o.productlist.main.1.52fe2f1e8UeGS9&algo_pvid=7f200f96-f0f9-4529-976c-c0c433f110f1&algo_exp_id=7f200f96-f0f9-4529-976c-c0c433f110f1-0&pdp_npi=4%40dis%21CZK%21426.51%21383.84%21%21%2118.39%2116.55%21%4021039f3217265090168103446ea154%2112000041640436725%21sea%21CZ%212922517037%21X&curPageLogUid=dV4dGoXfsNik&utparam-url=scene%3Asearch%7Cquery_from%3A)

[high torque 11.5W](https://www.aliexpress.com/item/1005003239226808.html?spm=a2g0o.productlist.main.61.30f966278FLdXs&algo_pvid=d93977fd-c2ba-4d87-93dd-fd322112afb2&algo_exp_id=d93977fd-c2ba-4d87-93dd-fd322112afb2-30&pdp_npi=4%40dis%21CZK%21554.98%21432.91%21%21%2123.96%2118.69%21%402103890917267633164825719ee7b6%2112000024799565418%21sea%21CZ%212922517037%21X&curPageLogUid=pnYfvqIXaBZI&utparam-url=scene%3Asearch%7Cquery_from%3A)



# H bridge:
https://forum.arduino.cc/t/pwm-w-h-bridge/172377
![[Pasted image 20240916201157.png]]
