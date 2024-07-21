%if its not working make sure that matlab as an allowed application (windows defender firewall)
%and if you have third-party antivirus software ensure that matlab is not blocked by any antivirus features.


mail = 'your_mail@mail.com'; %your mail address
password = 'your_password'; %your password (use the application password)
server = 'smtp.gmail.com'; % this is your mail provider 
port = '587'; %smtp port number generally its 587(STARTTLS) refer to your email provider
setpref('Internet','E_mail', mail);
setpref('Internet','SMTP_Server', server);
setpref('Internet','SMTP_Username', mail);
setpref('Internet','SMTP_Password', password);

props = java.lang.System.getProperties; %configuration information about the system
props.setProperty( 'mail.smtp.ssl.trust', server);
props.setProperty( 'mail.smtp.user', mail ); %used for authentication when sending emails
props.setProperty( 'mail.smtp.password', password );
props.setProperty( 'mail.smtp.host', server );
props.setProperty( 'mail.smtp.port', port );
props.setProperty( 'mail.smtp.starttls.enable', 'true' );
props.setProperty( 'mail.smtp.auth', 'true' );
subject = 'Test Email';
message = 'This is a test email from MATLAB.';

sendmail('send@mail.com','subject','message')