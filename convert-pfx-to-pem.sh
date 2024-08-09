# To export a .pem or .cer and the key from a .pfx file, you can use OpenSSL. Here's a step-by-step guide to do that:

# Install OpenSSL:
# Ensure you have OpenSSL installed. You can download it from OpenSSL's official site.

# Export the Private Key:
# Use the following command to extract the private key from the .pfx file:


openssl pkcs12 -in yourfile.pfx -nocerts -out key.pem -nodes
    # yourfile.pfx: Replace with the name of your .pfx file.
    # key.pem: This will be the output file containing the private key.

# Export the Certificates:

# Use the following command to extract the certificates from the .pfx file:

openssl pkcs12 -in yourfile.pfx -clcerts -nokeys -out cert.pem
    # yourfile.pfx: Replace with the name of your .pfx file.
    # cert.pem: This will be the output file containing the certificate.
    # Convert .pem to .cer (if needed):

If you need a .cer file, you can convert the .pem file to .cer using the following command:

openssl x509 -outform der -in cert.pem -out cert.cer
    # cert.pem: The PEM file containing the certificate.
    # cert.cer: This will be the output file in DER format.

# Here's an example of the complete process:


# Export the private key
openssl pkcs12 -in yourfile.pfx -nocerts -out key.pem -nodes

# Export the certificate
openssl pkcs12 -in yourfile.pfx -clcerts -nokeys -out cert.pem

# Optional: Convert the PEM certificate to CER format
openssl x509 -outform der -in cert.pem -out cert.cer
# Replace yourfile.pfx with the path to your .pfx file, and key.pem, cert.pem, and cert.cer with your desired output file names.