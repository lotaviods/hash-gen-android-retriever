while true; do
    read -rep 'Do you wish to run this program? [Y/N]'$'\n' yn
    case $yn in
        [Yy]* )
        read -p "Upload key-alias:"$'\n' keyalias

        read -p "Key-alias store password:"$'\n' keypass
        
        read -p "Bundle id:"$'\n' bundleid
  
        read -p "Dev Certificate file path:"$'\n' devCertPath

        keytool -importcert -alias $keyalias -file $devCertPath -keystore certificate.jks -storepass $keypass
       
        echo "Generated hash: \n"
	
	    keytool -exportcert -alias $keyalias -keystore certificate.jks --storepass $keypass | xxd -p | tr -d "[:space:]" | xargs echo -n $bundleid | shasum -a 256 | tr -d "[:space:]-" | xxd -r -p | base64 | cut -c1-11
        
        rm "certificate.jks"
        
        echo
        ;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no."$'\n';;
    esac
done
