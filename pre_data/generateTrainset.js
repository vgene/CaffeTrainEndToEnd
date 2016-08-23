var mongo = require('mongodb').MongoClient;


mongo.connect("mongodb://localhost:29017/carDB",function(err,db){
	var carimgs = db.collection('carimgs');
	var carINFO = db.collection('carINFO');
function out(item){
	var id = item.id;
	// console.log(id);

	carINFO.find({id:id}).toArray(function(err,infos){

		// console.log('a');
		if (err || !infos){
			console.log(err);
			return;
		}
		var seq = infos[0].seq;
		console.log(item.mImage+'.jpg '+seq);
	})
}

	carimgs.find({}).toArray(function(err,items){
		if (err){
			console.log(err);
			return;
		}

		// console.log(items[0]);
		for (var i=0;i<items.length;i++){
			var item=items[i];
			//console.log(item);
			out(item);
		}

	});
})
