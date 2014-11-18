curl -X POST http://people.lelylan.com/oauth/token \
     -u  d3fcb4f5dddef242fed4e5b7b7c525286468092ea9ce522c04d60f842f720816:7745d79278a124bb0812ff929395bce53f8704d7e95d190be4dc9251f853207b \
     -d 'grant_type=authorization_code' \
     -d 'code=99e5f279f1c0535f836965e8ac4193c6eff13b0d00128706564f2df67fe767b7' \
     -d 'redirect_uri=http://prosciana.com/'