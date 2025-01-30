# co chci dělat?
- balančního robota
- s automatickým hledáním centra
- který má bezdrátový ovladač
- přidat kameru
- napájecí stojan na 12V
- čtení napětí

# Balanční robot
2x motor
esp32 wroom module
pcb
6x18650 (12V, 3s2p)
debug uart
12 => 3.3V
12=> 5V

# Ovladač
josytick
esp32 wroom
pcb
1-2 18650
debug uart

# Stojan
programmer for robot
programmer for remote controller
power supply for remote and robot
	230 to 12V
debug uart

# modely

# elektro

# programy

# Rozměry


# esp32
2x SPI
IIC
uart

# Funkce:
## Robot:
### Data:
SD karta
flash cache

### vstupy:
(IIC) gyroskop
2x ultrasound


## Ovladač:
### Data
pouze cache, nic neukládá, vše musí nahrát s robota, nebo stojanu

### vstupy

### Výstupy
Display
wifi

## Stojan:
### Data


