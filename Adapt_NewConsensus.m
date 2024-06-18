


%%% Load the new connectomes, cut subctx ROIs and create the structure with
%%% U like in struct_data


cons_path = '/home/localadmin/Documents/CODES/SCcoupling_IED_GSP_modified/data/MatMat_28subs_L2008_DSI_normalized_fiber_density.mat';
out_path = '/home/localadmin/Documents/CODES/SCcoupling_IED_GSP_modified/data/struct_data_MatMat_28subs_L2008_DSI_normalized_fiber_density.mat';

load(cons_path);
SC_cons = SC(:,:,1);
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