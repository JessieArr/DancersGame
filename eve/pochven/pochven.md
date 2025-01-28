---
title: Pochven
parent: EVE Online
permalink: /eve/pochven
---
1. TOC
{:toc}
### Pochven
Below is a map of Pochven.

![Pochven](/images/eve/pochven.jpg)

Below is a list of Trig space systems with maps of their static entry systems.
 
### Ichoriya
![Ichoriya](/images/eve/ichoriya-statics.jpg)

### Tunudan
![Tunudan](/images/eve/tunudan-statics.jpg)

```mermaid
graph TD
    subgraph statics [Tunudan's K-space Statics]
        Oisio([Oisio]):::highsec
        Oshaima([Oshaima]):::highsec
        Yria([Yria]):::highsec
        Kulelen([Kulelen]):::highsec
        Venilen([Venilen]):::highsec
        Hogimo([Hogimo]):::highsec
        Huttaken([Huttaken]):::highsec
        Rairomon([Rairomon]):::highsec
        Enderailen([Enderailen]):::lowsec
        Kubinen([Kubinen]):::lowsec
        Uedama([Uedama]):::highsec
        Sivala([Sivala]):::highsec
        Halaima("Halaima
        (7j to Jita)"):::highsec
        Hysera("Hysera
        (Caldari FW)"):::lowsec
        Oisio <--> Oshaima
        Oisio & Oshaima <--> Yria
        Yria <--> Kulelen
        Kulelen & Venilen & Huttaken <--> Hogimo
        Huttaken & Enderailen <--> Rairomon
        Uedama & Sivala & Enderailen <--> Kubinen
        Uedama <--> Sivala
        Huttaken <--> Halaima
        Oisio & Oshaima <-.-> Hysera
        click Oisio "https://evemaps.dotlan.net/map/The_Citadel/Oisio" _blank
        click Oshaima "https://evemaps.dotlan.net/map/The_Citadel/Oshaima" _blank
        click Yria "https://evemaps.dotlan.net/map/The_Citadel/Yria" _blank
        click Kulelen "https://evemaps.dotlan.net/map/The_Citadel/Kulelen" _blank
        click Venilen "https://evemaps.dotlan.net/map/The_Citadel/Venilen" _blank
        click Hogimo "https://evemaps.dotlan.net/map/The_Citadel/Hogimo" _blank
        click Huttaken "https://evemaps.dotlan.net/map/The_Citadel/Huttaken" _blank
        click Rairomon "https://evemaps.dotlan.net/map/The_Citadel/Rairomon" _blank
        click Enderailen "https://evemaps.dotlan.net/map/The_Citadel/Enderailen" _blank
        click Kubinen "https://evemaps.dotlan.net/map/The_Citadel/Kubinen" _blank
        click Uedama "https://evemaps.dotlan.net/map/The_Citadel/Uedama" _blank
        click Sivala "https://evemaps.dotlan.net/map/The_Citadel/Sivala" _blank
        click Hysera "https://evemaps.dotlan.net/map/The_Citadel/Hysera" _blank
        click Halaima "https://evemaps.dotlan.net/map/The_Citadel/Halaima" _blank
    end
    subgraph pochven [Pochven]
        Tunudan([Tunudan]) <--> Harva([Harva])
        Kuharah([Kuharah]) <--> Tunudan
        Tunudan:::nullsec
        Harva:::nullsec
        Kuharah:::nullsec
        click Tunudan "https://evemaps.dotlan.net/map/Pochven/Tunudan" _blank
        click Harva "https://evemaps.dotlan.net/map/Pochven/Harva" _blank
        click Kuharah "https://evemaps.dotlan.net/map/Pochven/Kuharah" _blank
    end
    classDef nullsec fill:#600,stroke:#000,color:#fff
    classDef lowsec fill:#660,stroke:#000,color:#fff
    classDef highsec fill:#060,stroke:#000,color:#fff
```
