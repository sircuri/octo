FROM microsoft/dotnet:runtime
MAINTAINER github@vanefferenonline.nl
LABEL version="1.0.0"

WORKDIR /octo

RUN curl -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/4.30.7/OctopusTools.4.30.7.portable.tar.gz && tar -xvzf OctopusTools.tar.gz && rm OctopusTools.tar.gz

ENTRYPOINT [ "dotnet", "Octo.dll" ]
CMD [ "help" ]
