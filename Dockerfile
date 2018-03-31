FROM microsoft/dotnet:runtime
MAINTAINER github@vanefferenonline.nl
LABEL version="4.31.5"

WORKDIR /octo

RUN curl -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/4.31.5/OctopusTools.4.31.5.portable.tar.gz && tar -xvzf OctopusTools.tar.gz && rm OctopusTools.tar.gz

ENTRYPOINT [ "dotnet", "Octo.dll" ]
CMD [ "help" ]
