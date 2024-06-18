
close all; clear all;

%new_cons_path =  '/home/localadmin/Documents/CODES/SCcoupling_IED_GSP_modified/data/struct_data_Wnumber_of_fibers_28subs_L2008_DSI_dist.mat';
new_cons_path = '/home/localadmin/Documents/CODES/SCcoupling_IED_GSP_modified/data/struct_data_MatMat_28subs_L2008_DSI_normalized_fiber_density.mat';
old_cons_path = '/home/localadmin/Documents/CODES/SCcoupling_IED_GSP_modified/data/struct_data.mat';

new = load(new_cons_path);
old = load(old_cons_path);


subplot(2,2,1); imagesc(new.struct_data.SC); title(sprintf('New Consensus \n %d conn', length(find(new.struct_data.SC>0))));
subplot(2,2,2); imagesc(old.struct_data.SC); title(sprintf('Old Consensus \n %d conn', length(find(old.struct_data.SC>0))));
%subplot(2,2,3); scatter(old.struct_data.SC, new.struct_data.SC); xlabel('Old Consensus'); ylabel('New Consensus');
subplot(2,2,3); histogram(squeeze(nonzeros(old.struct_data.SC)), 'Normalization', 'probability', 'FaceAlpha', .2, 'DisplayName', 'Old');
hold on; histogram(squeeze(nonzeros(new.struct_data.SC)), 'Normalization', 'probability', 'FaceAlpha', .2, 'DisplayName', 'New'); 
legend('old', 'new');
subplot(2,2,4); imagesc(new.struct_data.SC - old.struct_data.SC); title('Old - New'); colorbar;
