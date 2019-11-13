function toyDataset(problem::String)
	idir = joinpath("data", problem);
	fMat = readdlm(joinpath(idir, "data.csv"));
	labels = Int.(readdlm(joinpath(idir, "labels.csv")))[:];
	bagids = Int.(readdlm(joinpath(idir, "bagids.csv")))[:];
	b = Mill.bags(bagids)
	y = [maximum(labels[i]) for i in b];
	ds = BagNode(ArrayNode(Float32.(fMat)), b, y);
	ds = ds[length.(ds.bags) .> 1];
	return ds, reflectinmodel(ds, d -> Dense(d, 30, relu), d -> SegmentedMeanMax(d));
end

BrownCreeper() = toyDataset("BrownCreeper");
CorelAfrican() = toyDataset("CorelAfrican");
CorelBeach() = toyDataset("CorelBeach");
Elephant() = toyDataset("Elephant");
Fox() = toyDataset("Fox");
Musk1() = toyDataset("Musk1");
Musk2() = toyDataset("Musk2");
Mutagenesis1() = toyDataset("Mutagenesis1");
Mutagenesis2() = toyDataset("Mutagenesis2");
Newsgroups1() = toyDataset("Newsgroups1");
Newsgroups2() = toyDataset("Newsgroups2");
Newsgroups3() = toyDataset("Newsgroups3");
Protein() = toyDataset("Protein");
Tiger() = toyDataset("Tiger");
UCSBBreastCancer() = toyDataset("UCSBBreastCancer");
Web1() = toyDataset("Web1");
Web2() = toyDataset("Web2");
Web3() = toyDataset("Web3");
Web4() = toyDataset("Web4");
WinterWren() = toyDataset("WinterWren");
