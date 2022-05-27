while true; do
    read -rep 'Do you wish to run this program? [Y/N]'$'\n' yn
    case $yn in
        [Yy]* )
        read -p "Upload key-alias:"$'\n' keyalias

        read -p "Key-alias store password:"$'\n' keypass
        
        read -p "Bundle id:"$'\n' bundleid
        
        read -p "Generate new jks key? [Y/N]"$'\n' yn
        
        case $yn in
        
        [Yy]* )
        read -p "New jks key file name:"$'\n' jkspath
        read -p "Deployment_cert file name:"$'\n' devfilename

        keytool -importcert -alias $keyalias -file $devfilename -keystore $jkspath -storepass $keypass;;
        
        [Nn]* ) 
        read -p "Existent jks file name:"$'\n' jkspath ;;
        * );;

        esac
    
        echo "Generated hash: \n"
	
	keytool -exportcert -alias $keyalias -keystore $jkspath --storepass $keypass | xxd -p | tr -d "[:space:]" | xargs echo -n $bundleid | shasum -a 256 | tr -d "[:space:]-" | xxd -r -p | base64 | cut -c1-11

        echo
        ;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no."$'\n';;
    esac
done
