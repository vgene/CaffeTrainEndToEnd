# HOW TO DO CAFFE TRAINING WITH OUR DATA
### Do Preparation for Environment
	0. Install Node.JS with guide from official website (use `apt-get` to install node is highly unrecommended)
	1. Install MongoDB server and client (just use `sudo apt-get install mongo`. this is fine)
	2. Install all node modules when needed, using `npm install`
	3. Start mongo server in background using `nohup mongod --dbpath \path\to\your\mongoData --port YOUR_PORT_NUM(please use 29017 by default)
	4. Check data using mongo client, `mongo localhost:29017/carDB`, then use mongo queries to check collections like **users, carINFO, carimgs**

### Prepare Trainging Data for Caffe
	0. CHECK DATA FIRST
	1. Use `generateTrainset.js` to produce an OUT.txt which is a file containing car type name, cartype sequence, image location. This procedure may take a wwwwwwhile(for up to ten minutes, have a cup of coffe if you want) and you can check OUT.txt from time to time to see whether it is end for the program won't close by itself.(Due to concurrent problem, i really don't know how to quit the program gracefully)
	2. Use `Random\_Text.py` to split OUT.txt into two files(train.txt&val.txt) randomly
	3. Use `genSynset.py` to produce `synset.txt` which is a reference for Caffe to tell the mapping relation between name and sequence number
	4. Use `createImagenet.sh \ makeImagenetMean.sh` to buildup LMDB file for Caffe to train

### Prepare Prototext for Caffe
	0. Generally speaking, the example prototext works well
	1. Modify out_num of the last layer to match category count of `synset.txt` and the training file(which should be equal if everything goes right)
	2. Modify convnet if you want
	3. Modify input LMDB path in each prototxt

### Do Training
	0. WE should always do fine tuning instead of training from scratch for the sake of time and possibility of convergence, so please prepare the original CaffeModel before fine tuning.
	1. Modify fine-tuning.sh for your demands.
	2. Run fine-tuning.sh in the background and make sure other programs will not interrupt training procedure.(consider GPU, CPU, and Memory Usage)

### Check Training Status

### Test Trained Model

### Deploy Trained Model

