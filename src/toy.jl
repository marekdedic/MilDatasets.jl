using FileIO;
using JLD2;
using Mill;

function toyDataset(problem::String)::BagNode{ArrayNode{Matrix{Float64}, Nothing}, AlignedBags, Vector{Int64}}
	root = joinpath(@__DIR__, "..", "data", problem);
	return catobs(map(file -> load(joinpath(root, file), "dataset"), readdir(root))...);
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
