# Webseite podcast-muc.de

Für die Webseite verwenden wir den statischen Webseitengenerator [Hugo](https://gohugo.io/getting-started/).

## Inhalte bearbeiten

Checke dieses Repository lokal aus, um Änderungen vorzunehmen oder Inhalte hinzuzufügen.

~~~
# per HTTPS
git clone https://github.com/podcast-muc/website.git
git submodule init
git submodule update

# per SSH
git clone git@github.com:podcast-muc/website.git
git submodule init
git submodule update

# lokale Vorschau per
hugo server
~~~

Erstelle einen neuen Branch für deine Bearbeitung bzw. neuen Inhalte. Wenn du fertig bist und deine Änderungen gepusht hast, erstelle bitte einen [Pull Request](https://github.com/podcast-muc/website/pulls).

Die Inhalte selbst werden per [Markdown](https://de.wikipedia.org/wiki/Markdown) geschrieben. Neue Meetups können per Vorlage (aka Archetype) wie folgt angelegt werden:

```
hugo new termine/$(date +%Y-%m)-meetup.md
```
oder alternative auch per Helper-Skript:
```
./new-meetup-page.sh
```




## Änderungen veröffentlichen

~~~
curl -X POST \
     --fail \
     -F token=$TOKEN \
     -F ref=main \
     https://gitlab.com/api/v4/projects/$PROJECT_ID/trigger/pipeline
~~~

Die Variablen `TOKEN` und `PROJECT_ID` müssen vor der Verwendung noch entsprechend gesetzt werden.


## Shortcodes

Es gibt [Standard-Hugo-Shortcodes](https://gohugo.io/content-management/shortcodes/) wie `figure`, `gist`, `highlight`, `instagram`, `tweet`, `vimeo` und `youtube`.
Wir haben aber auch eigene Shortcodes.

### mediacccde

Mit diesem Shortcode kann man Videos von [media.ccc.de](https://media.ccc.de/) in die Seite einbinden.
Man braucht nur die URL des Videos und muss noch `/oembed` anhängen.

~~~
{{< mediacccde "https://media.ccc.de/v/podcast-muc-4130-podcast-atti-tune-musik/oembed" >}}
~~~

## Twittermenschen

@Abendgruen @Abspannpodcast @alexrudat @AndreasRaum @angbor3D @ankegroener @annikrubens @audioglueck @channelcast_de @CleanElectrCast @DaFisch @DasMorgenradio @diezugfunker @el_loko74 @FehlfarbenPod @friemel_backe @FRUEFpodcast @ganzbeitrost @GNetzer 

@Haltungstrainer @insohr @isedcast @KBMusicmc @kidz_pod @klingnerin @kluepfel @lautgutpodcast @marcelstuht @martinobly @meet_judith @meyerhawranek @Munifornication @ondibox @philipp_hellwig @RessourcenFM @rolawin @saerdnaer @sandrastaub_de

@Sendegarten_de @soundofmunich @stiefkind @Theofel @theTJ23 @TJstudioDE @toesiroe @tofrenz @Traumblau @umwomukum @wiesnmichi @zeitweise 