echo "Downloading jacov-maven-plugin.jar"
curl -o jacov-maven-plugin.jar "https://suresofttech.hanbiro.net/cgi-bin/cloudGetLink.cgi?id=66973&key=717959419dd90a814136bf2acdc39cd9"
echo "Complete download. (jacov-maven-plugin)"
echo "Downloading java-runtime.jar"
curl -o java-runtime.jar "https://suresofttech.hanbiro.net/cgi-bin/cloudGetLink.cgi?id=66972&key=ddf8687c7c4a984bbc6db42bf6053ded"
echo "Complete download. (java-runtime)"

echo "Install maven plugins (jacov-maven-plugin)"
mvn install:install-file -Dfile="jacov-maven-plugin.jar" -DgroupId=com.qualityscroll.caas -DartifactId=jacov-maven-plugin -Dpackaging="jar" -Dversion="1.0.0-SNAPSHOT"
echo "Complete installation. (jacov-maven-plugin)"
echo "Install java runtime (java-runtime)"
mvn install:install-file -Dfile="java-runtime.jar" -DgroupId=com.qualityscroll.caas -DartifactId=java-runtime -Dpackaging="jar" -Dversion="0.0.1-SNAPSHOT"
echo "Complete installation. (java-runtime)"
