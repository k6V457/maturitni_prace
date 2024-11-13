Nejdříve byla zvolena velikost robota. Řídil jsem se velikostí článku 18650 se kterým bude robot napájen. Dále byly zvoleny motory. Jsou potřeba motory s enkodérem aby mohly být řízeny pomocí uzavřeného okruhu. V nejvyšší zátěži může mít zvolený motor odběr až 1A při 12V. To znamená celkový odběr 24W v pohonné části.


# Motory
Přibližná váha robota bude max 300g. Maximální velikost je omezena výrobcem PCB JLCPCB na 100x100mm, připočteme poloměr kol a celkový výška je 15cm. Maximální teoretická rychlost byla zvolena alespoň 2m/s což je rychlost chůze člověka. Zrychlení bylo zvoleno 2m/s aby robot dokázal zrychlovat i do mírného kopce a nezabralo to nesmyslně dlouho. Po dosazení do soustavy rovnic:
$F_{l}=m\cdot l\cdot q\cdot\sin\alpha\cdot\frac{S}{2}$
Vypočteme náklon dosazením zrychlení
$\alpha=\sin^{-1}\left(\frac{a}{q}\right)$
Přepočteme na $kg*{cm}^{-1}$
$F_{l}\cdot\frac{100}{9.81}$
Spočteme si požadovanou rychlost otáčení motoru:
$v=\frac{2\pi ro}{60}$
Safety factor byl zvolen 3.
F vyšlo 0.2025N*m
Příklad výpočtu: 
!!NEZAPOMNI!!

| součástky | Napětí | Proud  |      | Odběr |
| --------- | ------ | ------ | ---- | ----- |
| 2xmotor   | 12V    | 2*0.9A | 2A   | 24W   |
| ESP32     | 3.3    | 0.5A   | 0.7A | 3.5W  |
| TOF       | 3.3V   | 0.5A   | 0.7A | 2.5W  |
| celkem    |        |        |      | 30W   |
|           |        |        |      |       |



| U    | I     | součastky | P   |
| ---- | ----- | --------- | --- |
| 12V  | 2*0.9 | 2xmotor   |     |
| 5V   |       |           |     |
| 3.3V | 0.5A  |           |     |
Celkový příkon:

___

## Baterie
- max. kapacita 3450mah@3.6V
- min. kapacita 3300mah\@3.6V
- 12.42Wh/článek115200
$max P = min U * max I$

|                    | 1S                                             | 2S                       | 2P                                                               | 3S       | 3P                                                               |
| ------------------ | ---------------------------------------------- | ------------------------ | ---------------------------------------------------------------- | -------- | ---------------------------------------------------------------- |
| min U              | 2.5                                            | 5                        | 2.5                                                              | 7.5      | 2.5                                                              |
| min usable U       | 3                                              | 6                        | 3                                                                | 9        | 3                                                                |
| max U              | 4.2                                            | 8.4                      | 4.2                                                              | 12.6     | 4.2                                                              |
| max I              | 12A                                            |                          |                                                                  |          |                                                                  |
| needed I           | 12                                             | 6                        | 12                                                               | 4        | 12                                                               |
| min P \[W]         | 30                                             | 60                       | 60                                                               | 75       | 75                                                               |
| needed P \[W]      | 30                                             | 30                       | 30                                                               | 30       | 30                                                               |
| max kapacita\@3.6V | 3450mah                                        | 6900mah                  | 6900mah                                                          | 10350mah | 10350mah                                                         |
| max kapacita \[Wh] | 12.45                                          | 24.84                    | 24.84                                                            | 37.26    | 37.26                                                            |
| vybíjecí t \[min]  | 24.9                                           | 49.8                     | 49.8                                                             | 74.7     | 74.7                                                             |
| nabíjecí t         | ~124                                           | ~124                     | ~124                                                             | ~124     | ~124                                                             |
| nabití/vybití      | ~5                                             | ~2.5                     | ~2.5                                                             | ~1.7     | ~1.7                                                             |
| nabíjecí I         | 1.67                                           | 1.67                     | 1.67                                                             | 1.67     | 1.67                                                             |
| max nabíjecí U     | 4.2                                            | 8.4                      | 4.2                                                              | 12.6     | 4.2                                                              |
| počet článků       | 1                                              | 2                        | 2                                                                | 3        | 3                                                                |
| výhody             | - nízká hmotnost<br>- není třeba load balancer | dostatečný výkon<br>     | Není potřeba load balancer                                       |          | Není potřeba load balancer                                       |
| nevýhody           | hraniční výkon                                 | - požaduje load balancer | Všude jsou stejné proudy jako u 1S, akorát méně zatěžuji baterii |          | Všude jsou stejné proudy jako u 1S, akorát méně zatěžuji baterii |
| závěr              |                                                |                          |                                                                  | NE       | NE                                                               |
https://www.omnitron.cz/_dokumenty/792019123600416/ncr-18650ga.pdf 10.10.2024
Datasheet udává, že baterie NCR18650GA lze vybít až na 2.5V.
Pro tuto práci nebyl nalezen žáden zdroj jež by bez problému zvládl dodávat kontinualní proud 2A při napětí 12V z pouhých 2.5V. To je téměr 10A vstupního proudu.


1. prototyp robot
- externí nabíjení
- pouze zdroje motory, IMU, ESP32, 1x TOF sensor