#!/bin/bash

# Program som lager en systeminformasjonsside

TITTEL="Systeminformasjonsside for $HOSTNAME"
TIDSPUNKT=$(date +"%x %X %Z")
TIME_STAMP="Generert $TIDSPUNKT av $USER"

report_uptime() {
    cat <<-_EOF_
        <H2> Oppetid </H2>
        <PRE>$(uptime)</PRE>
_EOF_
    return
}
report_disk_space() {
    cat <<-_EOF_
        <H2> Diskbruk </H2>
        <PRE>$(df -h)</PRE>
_EOF_
    return
}
report_home_space() {
    cat <<-_EOF_
        <H2> Home diskbruk</H2>
        <PRE>$(du -sh /home/*)</PRE>
_EOF_
    return
}

cat <<_EOF_
    <html>
        <head>
            <title> $TITTEL </title>
        </head>
        <body>
            <h1>$TITTEL</h1> 
            <p>$TIME_STAMP</p> 
            $(report_uptime)
            $(report_disk_space)
            $(report_home_space)
        </body>
    </html>
_EOF_
