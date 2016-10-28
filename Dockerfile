FROM marvambass/versatile-postfix

# Postfix Setting file
ADD postfix/main.cf /etc/postfix/main.cf

# Postfix Ports
EXPOSE 25

# Add startup script
ADD startup.sh /opt/startup.sh
RUN chmod a+x /opt/startup.sh

# Docker startup
ENTRYPOINT ["/opt/startup.sh"]
CMD ["-h"]

