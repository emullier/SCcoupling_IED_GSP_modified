


%%% Load the new connectomes, cut subctx ROIs and create the structure with
%%% U like in struct_data


cons_path = 'data/Consensus_Wnormalized_fiber_density_43subs_L2008_dist.mat';
out_path = 'data/struct_data_Wnormalized_fiber_density_43subs_L2008_dist.mat';

load(cons_path);
idxs_cort = [1:57, 63, 64, 65:121, 127, 128];

%%% LAUSANNE 2008 SCALE 2
%%% ======================
%%% 63,127 : hippocampus
%%% 64, 127: amygdala
%%% 58:62, 122:126: caudate, thalamus, putamen, pallidum, accumb
%%% 129 : brainstem

struct_data = {};
struct_data.SC = SC_cons(idxs_cort, idxs_cort);

save(out_path, "struct_data")