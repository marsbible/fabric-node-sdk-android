fabric node sdk for android, used for nodejs-mobile project.
Please take the project below as an example:
https://github.com/janeasystems/nodejs-mobile-samples/tree/master/android/native-gradle-node-folder

Just copy node_modules to your assets/nodejs-project directory, then enjoy the fabric node sdk :).

Note:
There are two native C++ addon grpc and pkcs11 should be cross compiled for android.
The default shipped binary arch is arm64, you can use android_build*.sh to generate your arch.
Some variable should be adopted to your environment.


