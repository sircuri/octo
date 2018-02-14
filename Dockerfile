FROM microsoft/dotnet:runtime
LABEL maintainer="github@vanefferenonline.nl"
LABEL version="4.30.8"

WORKDIR /octo

RUN curl -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/4.30.8/OctopusTools.4.30.8.portable.tar.gz && tar -xvzf OctopusTools.tar.gz && rm OctopusTools.tar.gz

ENTRYPOINT [ "dotnet", "Octo.dll" ]
CMD [ "help" ]
