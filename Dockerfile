FROM ocasta/api-blueprint-server
ADD ./spec.apib /user/src/app/spec/spec.apib
ENV DISABLE_AUTH true
