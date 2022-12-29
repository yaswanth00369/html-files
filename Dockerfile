FROM amazonlinux:2
LABEL "Author" = "Yaswanth"
LABEL "Date"   = "29-Dec-2022"
RUN sudo yum update -y
RUN sudo yum install httpd -y
RUN sudo systemctl start httpd
RUN sudo systemctl enable httpd
COPY  . /var/www/html
EXPOSE 81
