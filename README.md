sigauth
=======

Skeletion web app for signature authentication testing

Install:

> git clone https://github.com/drazen/sigauth
> cd sigauth
> bundle install
> rails s

Testing:

Enter a signature at:

localhost:3000/signatures/new

a JSON encoding of the signature strokes will be written to /tmp/signatures.json

