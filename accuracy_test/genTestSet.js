var mongo = require('mongodb').MongoClient;

var queryID="fabia"

var count;
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
	        count-=1;
			if (count===0)
				process.exit(0);

	})
}

	carimgs.find({'id':queryID}).toArray(function(err,items){
		if (err){
			console.log(err);
			return;
		}

		count=items.length;
		// console.log(items[0]);
		for (var i=0;i<items.length;i++){
			var item=items[i];
			//console.log(item);
			out(item);
		}

	});

		
	
	
})
