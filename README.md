## What is this?
This is a simple microcontroller project to control a Power On LED for use in vintage audio equipment. 
Its purpose is to enable to you use a modern LED in place of a "bulb" but simulate the visual aspects
of the bulb warnming up/cooling down which is typical of lamp based indicators on vintage equipment. 
I created this project as part of the restoration I did on a Pioneer SPEC-1 / C77 early 70's preamp. 

## Schematic
![SPEC-1 LED](https://github.com/gerrysweeney/spec-1-led/blob/main/docs/spec-1-led-schematic.png?raw=true)

## Overview

When restoring old audio (or any vintage) equipment, one of the unreliable components of vintage 
audio equipment is the common use of filiment lamps.  These power hungry devices work by passing 
current through a wire in a glass envleope, commonly knon as a "bulb".  While these are still 
widely available, many prefer to swap these out for modern LED's which are more reliable, energy
efficient and have a longer service life.

There are issues with using LEDs as a modern alternatibve to a bulb, including: 

- Unlike a bulb which takes time to light up, perceived as a quickly ramping up light 
  output, an LED is instant on.. and this can be perceived and seems more clinical.
- Most bulbs in vintage equipment are driven from AC secondary from the power transformer.
  Because the nature of the bulb and its reaction speed to changing currents, the AC nature of the
  current source is not perceivable to the naked eye (or a camera shutter), however with an LED 
  they are much faster, reacting near instantly to current changes, and this can be percievd by
  the naked eye in a passing glance (or by a caper shutter) as a strobing effect
- LEDs are much more efficient, and, crucially require a DC current source, so in most cases a
  tech would connect to one of the DC rails with an appropriate resistor to limit current and
  thats it.  The problem with that is, if those DC rails are held up after power down by the
  PSU smoothing caps, this will alse keep the LED showing light when the original bulb would have
  long since extinguidhed.
- Unsurprisingly, not all vintage equiment is over-engineered, so expensive ares, like the PSU
  in an audio amplifier for exmaple, can be under=specified (or overloaded).  If you are powering
  a lamp indicator from a secondary transformer winding, the slow response time to power overloads
  such as a saturiting transformer as music is played at high volume, these fluxuations would not
  appear visually when using a lamp type indicator. However, LED's are much more responsivle and
  in this scenario your LED indivator could adopt a new persona as a "disco light", which is all
  very entertaining (for about a second) but the equipment is no longer working how it should,
  as a Lamp would no exhibit this behaviour. 

For anyone that appreciates vintage equipment for its asthetics, sometimes replacing indicators
and back lights with LEDs take away from that experience erroding the authenticity of the 
equipment, so this project, for the cost of a handful of cheap and easy to get components
solves all of these problems. 

## What is this for?

This project was created to use as part of a restoration of a Pioneer SPEC-1 Pre-amplifier made
in the early 197's. The indicator lamp on the front pannel is a bulb, and so the goal was to 
replace that with a modern 3mm ultra bright white LED, but to have that LED visually look like
a lamp when turned on/off.  In simple terms this means a small mcirocontroller is used to drive
the LED with a PWM signical that ramps up/down the current to the LED, simulating the warm up
and cool down dimming that you would perceive in a lightbulb.  This concept though applies 
to any scenario where you want to replace a "bulb" type indicator light or backlight with a 
modern LED equivelent. 

## Who is this for?

Anyone that wants to use LEDs as modern replacement for bulbs in vintage equipment and, crucially
who also has more time on their hands to fiddle about this sort of stuff :)  It can seem like
getting another bulb would be easier - but where is the fun in that hey...

## Audio Muting Indicator 

As a secondary feature, the Pioneer SPEC-1/C77 preamp includes what they refer to in the manual
as a "muting" circuit.  Because the preamp works internally on +/-48V it takes a little while for
the power supplies and preamp circuitry to stablise.  If this was connected to an amplifier that
was turned on first, this would often play out as strange noises, which could be very harmful
to your speakers if you are using a high powered amplifier.  To combat this, the Pioneer engineers
added a Relay into the preamp output path, which is off by default, disconnecting the output
of the premap circuit to the output terminals of the unit.  Once all the DC levels have settled
the relay, which is controlled by a delayed on/instance off circuit, detects the AC signal from
one of the power transformer windings and uses that to open/close the relay.  I added a second 
sense input to the microcontroller that senses the state of the muting relay, when its actively
muting the output, the power LED shows a periodic short double-pulse, to show that muting is
active.  This of course is not what the orginal Lamp did, so this does modernise it.  If you do 
not want to use this you can simply tie the input pin to ground and this will be disabled. 

## Hardware / Environment / Tools

Project is built using MPLAP-X IDE and XC8 compiler in "C", the Microchip ecosystem, argeting 
the Microchip low cost 8-pin part PIC12F675.
