#!/usr/bin/env python

import pantilthat

pantilthat.light_mode(pantilthat.WS2812)
pantilthat.light_type(pantilthat.GRBW)

r, g, b, w = 0, 0, 0, 0

while True:
    for x in range(18):
        pantilthat.set_pixel(x, r, g, b, w)

    pantilthat.show()

    p = 0.00
    t = 0.00

    pantilthat.pan(p)
    pantilthat.tilt(t)

