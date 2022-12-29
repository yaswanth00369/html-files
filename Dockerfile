FROM amazonlinux:2
LABEL "Author" = "Yaswanth"
LABEL "Date"   = "29-Dec-2022"
RUN yum update -y
RUN yum install httpd -y
RUN systemctl start httpd
RUN systemctl enable httpd
COPY  . /var/www/html
EXPOSE 81
