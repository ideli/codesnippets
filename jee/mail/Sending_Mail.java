// for Mail: //include e.g. from jboss-client-dir library: mail.jar 
import javax.mail.MessagingException; 
import javax.mail.Session; 
import javax.mail.Message; 
import javax.mail.Transport; 
import javax.mail.internet.InternetAddress;
//include from jboss-client-dir library: activation.jar 
import javax.mail.internet.MimeMessage;
...

Properties p = new Properties();
p.setProperty("mail.host", mailhost); 
p.setProperty("mail.user", mailuser);

Session mailSession = Session.getDefaultInstance(p);


MimeMessage msg = new MimeMessage(mailSession);

toAddr = new InternetAddress(addrto, nameto); 
fromAddr = new InternetAddress(addrFrom, nameFrom);


msg.setText(messagetext); 
msg.setSubject(subject);
msg.addRecipient(Message.RecipientType.TO,toAddr); 
msg.setFrom(fromAddr);


Transport.send(msg);