FROM amazonlinux:latest
LABEL "Author" = "Yaswanth"
LABEL "Date"   = "29-Dec-2022"
RUN yum update -y
RUN yum install httpd -y
RUN systemctl enable httpd
COPY  . /var/www/html
RUN systemctl restart httpd
EXPOSE 81
