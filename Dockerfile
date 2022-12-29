FROM httpd:latest

LABEL "Author" = "Yaswanth"
LABEL "Date"   = "29-Dec-2022"

COPY  . /usr/local/apache2/htdocs/


