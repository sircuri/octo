FROM microsoft/dotnet:runtime
MAINTAINER github@vanefferenonline.nl
LABEL version="4.31.4"

WORKDIR /octo

RUN curl -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/4.31.4/OctopusTools.4.31.4.portable.tar.gz && tar -xvzf OctopusTools.tar.gz && rm OctopusTools.tar.gz

ENTRYPOINT [ "dotnet", "Octo.dll" ]
CMD [ "help" ]
