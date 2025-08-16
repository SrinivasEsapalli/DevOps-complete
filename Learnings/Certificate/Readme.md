# Certificate
- [ Intro ](#Intro)
- [ SSL/TLS ](#SSL/TLS)



# Intro
- certificates are needed for security, authentication, and encryption.

## Secure communication 
  - it will have SSL/TLS so data transmitted from users,websites and system is protected.
## Authentication
- Authenticates the websites and users by eliminating man in the middle attacks(MIM)
## Data Integrity
 - ensures the transmitted data isn't altered during the trnasit.
## security
- by MFA(multi factor authentication)


# SSL/TLS 
- SSL - secured socket layer - helps by giving web security and these are availables from webservices company who is certificate authority(CA).
- these are used for providing safe, secure environment on the website to the customers need to purchase the SSL certificates. ( basically it will help to safuguard customers PII - personal identity information like credit card,SSN, DL etc and keep the website safe and secured for the cutomers )
- SSL certificates authenticates compnay online identity and provides encrypted connection for the customers.
  ## TLS - Transport layer security
  - This is modern and more secure version of the SSL, used for encrypting internet communication. 



  SSL certificate working:

  In general if a user receives 


  ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2068.jpg)

  Approch1 - server will have both private and public key and it sends a publick key to server CLient(user).
  The client  using this public key they will encrypt data and private key and send to server so server will decrypt it by using the private key which it has already

  Hacker : There is possibility that Man in the middle (MIM)  where hacker have both public and private key. So he can hack the network take the server public key and send his public key to the client. So client thinks this key is from server  ( because there is no way to validate this) and sends encrypted data and again hacker can decrypt it using his private key and sends differemt data to server in this way the data is not secured.



  SSL Way: here server will send the public key to the Certificate authority(CA ex: Let' connect). They will then create a certidicate with server DNS and signs on the certificate( sign is the encrypted format of the server public ket and CA key). So they sends this to server.

  - When ever clients reaches to server. Server will send this certificate  and public key to the client. To verify the certificate client reads the certificate and requests that particular CA for their key and client will validate the certificate by using both the keys(one from the server and one from the CA) if it's good, then treats the website as the secured. 


## Binding 
A binding refers to the process of linking an SSL/TLs certificate to a specific IP address, port, or domain on a server, ensuring secure communication between clients and the server.


## CN - comman Name in a certificate referes to the primary domain name or hostname for which  the SSL/TLS certificate issued.

- if a certificate used for example1.com then comman name is exmaple.com
- Sub domain will be sub.example.com.

Now a days SAN used over CN in SSL certificate.


## SAN (Subject alternative name)
- It is an extension in SSL/TLS certificate it allows multiple domain names, subdomains or IP addresses to be secured under a single certificate.


- It allows single certificate to cover multiple domains.


## Sectigo

- Sectigo is a leading Certificate Authority(CA) that provides SSL/TLS certificates.
- The cSR will be sent to the Sectigo.

- They will sign and They will give the certificate then we will install certificate into server.
- They will just match the private key and public key.
- Bind certificate into application website. that application website will use certificate and they will start communicating with users.

- 


