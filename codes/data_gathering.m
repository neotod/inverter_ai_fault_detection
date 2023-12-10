simulink_file_path = 'D:\courses\az_machine\project\aifd\simulink\fivelevelthreephasepscpwm\fivelevelthreephasepscpwm_with_current2.mdl'
data_dir = 'D:\courses\az_machine\project\aifd\data\phase_3'


ph_values = [0, 50, 100, 150, 200, 250, 300, 350];
f5_k_values = [200, 300, 400, 500, 600, 700, 800, 900];
f5_internal_r_values = [10, 100, 500, 800,1000, 4000, 6000, 10000];
fr_values = [50, 50, 50, 50, 100, 100, 100, 100];
fc_values = [300, 450, 600, 900, 300, 600, 900, 1200];
Ma = 0.8

% Load the Simulink model

% Loop through all possible combinations of variable values and simulate the model
for i = 1:length(ph_values)
    % Set the current variable values
    ph = ph_values(i);
    f5_k = f5_k_values(i);
    f5_internal_r = f5_internal_r_values(i);
    fr = fr_values(i);
    fc = fc_values(i);

    sim(simulink_file_path)

    % classes:
    % 0 - no fault
    % 1 - open circuit - emitter or collector open
    % 2 - short circuit
    % 3 - gate signal removal
    % 4 - loose connection
    % 5 - weak pulse


    v_output_nf = [v_output_nf.time, v_output_nf.data, zeros(length(v_output_nf.data), 1)];
    i_output_nf = [i_output_nf.time, i_output_nf.data, zeros(length(i_output_nf.data), 1)];

    writematrix(v_output_nf, strcat(data_dir, '\v_output_nf', '_', int2str(i), '.csv'));
    writematrix(i_output_nf, strcat(data_dir, '\i_output_nf', '_', int2str(i), '.csv'));



    v_output_f1_1 = [v_output_f1_1.time, v_output_f1_1.data, ones(length(v_output_f1_1.data), 1) * 1];
    i_output_f1_1 = [i_output_f1_1.time, i_output_f1_1.data, ones(length(i_output_f1_1.data), 1) * 1];

    writematrix(v_output_f1_1, strcat(data_dir, '\v_output_f1_1', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_1, strcat(data_dir, '\i_output_f1_1', '_', int2str(i), '.csv'))


    v_output_f1_2 = [v_output_f1_2.time, v_output_f1_2.data, ones(length(v_output_f1_2.data), 1) * 1];
    i_output_f1_2 = [i_output_f1_2.time, i_output_f1_2.data, ones(length(i_output_f1_2.data), 1) * 1];

    writematrix(v_output_f1_2, strcat(data_dir, '\v_output_f1_2', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_2, strcat(data_dir, '\i_output_f1_2', '_', int2str(i), '.csv'))


    v_output_f1_3 = [v_output_f1_3.time, v_output_f1_3.data, ones(length(v_output_f1_3.data), 1) * 1];
    i_output_f1_3 = [i_output_f1_3.time, i_output_f1_3.data, ones(length(i_output_f1_3.data), 1) * 1];

    writematrix(v_output_f1_3, strcat(data_dir, '\v_output_f1_3', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_3, strcat(data_dir, '\i_output_f1_3', '_', int2str(i), '.csv'))


    v_output_f1_4 = [v_output_f1_4.time, v_output_f1_4.data, ones(length(v_output_f1_4.data), 1) * 1];
    i_output_f1_4 = [i_output_f1_4.time, i_output_f1_4.data, ones(length(i_output_f1_4.data), 1) * 1];

    writematrix(v_output_f1_4, strcat(data_dir, '\v_output_f1_4', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_4, strcat(data_dir, '\i_output_f1_4', '_', int2str(i), '.csv'))


    v_output_f1_5 = [v_output_f1_5.time, v_output_f1_5.data, ones(length(v_output_f1_5.data), 1) * 1];
    i_output_f1_5 = [i_output_f1_5.time, i_output_f1_5.data, ones(length(i_output_f1_5.data), 1) * 1];

    writematrix(v_output_f1_5, strcat(data_dir, '\v_output_f1_5', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_5, strcat(data_dir, '\i_output_f1_5', '_', int2str(i), '.csv'))


    v_output_f1_6 = [v_output_f1_6.time, v_output_f1_6.data, ones(length(v_output_f1_6.data), 1) * 1];
    i_output_f1_6 = [i_output_f1_6.time, i_output_f1_6.data, ones(length(i_output_f1_6.data), 1) * 1];

    writematrix(v_output_f1_6, strcat(data_dir, '\v_output_f1_6', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_6, strcat(data_dir, '\i_output_f1_6', '_', int2str(i), '.csv'))


    v_output_f1_7 = [v_output_f1_7.time, v_output_f1_7.data, ones(length(v_output_f1_7.data), 1) * 1];
    i_output_f1_7 = [i_output_f1_7.time, i_output_f1_7.data, ones(length(i_output_f1_7.data), 1) * 1];

    writematrix(v_output_f1_7, strcat(data_dir, '\v_output_f1_7', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_7, strcat(data_dir, '\i_output_f1_7', '_', int2str(i), '.csv'))


    v_output_f1_8 = [v_output_f1_8.time, v_output_f1_8.data, ones(length(v_output_f1_8.data), 1) * 1];
    i_output_f1_8 = [i_output_f1_8.time, i_output_f1_8.data, ones(length(i_output_f1_8.data), 1) * 1];

    writematrix(v_output_f1_8, strcat(data_dir, '\v_output_f1_8', '_', int2str(i), '.csv'))
    writematrix(i_output_f1_8, strcat(data_dir, '\i_output_f1_8', '_', int2str(i), '.csv'))


    v_output_f2_1 = [v_output_f2_1.time, v_output_f2_1.data, ones(length(v_output_f2_1.data), 1) * 1];
    i_output_f2_1 = [i_output_f2_1.time, i_output_f2_1.data, ones(length(i_output_f2_1.data), 1) * 1];

    writematrix(v_output_f2_1, strcat(data_dir, '\v_output_f2_1', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_1, strcat(data_dir, '\i_output_f2_1', '_', int2str(i), '.csv'))


    v_output_f2_2 = [v_output_f2_2.time, v_output_f2_2.data, ones(length(v_output_f2_2.data), 1) * 1];
    i_output_f2_2 = [i_output_f2_2.time, i_output_f2_2.data, ones(length(i_output_f2_2.data), 1) * 1];

    writematrix(v_output_f2_2, strcat(data_dir, '\v_output_f2_2', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_2, strcat(data_dir, '\i_output_f2_2', '_', int2str(i), '.csv'))


    v_output_f2_3 = [v_output_f2_3.time, v_output_f2_3.data, ones(length(v_output_f2_3.data), 1) * 1];
    i_output_f2_3 = [i_output_f2_3.time, i_output_f2_3.data, ones(length(i_output_f2_3.data), 1) * 1];

    writematrix(v_output_f2_3, strcat(data_dir, '\v_output_f2_3', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_3, strcat(data_dir, '\i_output_f2_3', '_', int2str(i), '.csv'))


    v_output_f2_4 = [v_output_f2_4.time, v_output_f2_4.data, ones(length(v_output_f2_4.data), 1) * 1];
    i_output_f2_4 = [i_output_f2_4.time, i_output_f2_4.data, ones(length(i_output_f2_4.data), 1) * 1];

    writematrix(v_output_f2_4, strcat(data_dir, '\v_output_f2_4', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_4, strcat(data_dir, '\i_output_f2_4', '_', int2str(i), '.csv'))


    v_output_f2_5 = [v_output_f2_5.time, v_output_f2_5.data, ones(length(v_output_f2_5.data), 1) * 1];
    i_output_f2_5 = [i_output_f2_5.time, i_output_f2_5.data, ones(length(i_output_f2_5.data), 1) * 1];

    writematrix(v_output_f2_5, strcat(data_dir, '\v_output_f2_5', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_5, strcat(data_dir, '\i_output_f2_5', '_', int2str(i), '.csv'))


    v_output_f2_6 = [v_output_f2_6.time, v_output_f2_6.data, ones(length(v_output_f2_6.data), 1) * 1];
    i_output_f2_6 = [i_output_f2_6.time, i_output_f2_6.data, ones(length(i_output_f2_6.data), 1) * 1];

    writematrix(v_output_f2_6, strcat(data_dir, '\v_output_f2_6', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_6, strcat(data_dir, '\i_output_f2_6', '_', int2str(i), '.csv'))


    v_output_f2_7 = [v_output_f2_7.time, v_output_f2_7.data, ones(length(v_output_f2_7.data), 1) * 1];
    i_output_f2_7 = [i_output_f2_7.time, i_output_f2_7.data, ones(length(i_output_f2_7.data), 1) * 1];

    writematrix(v_output_f2_7, strcat(data_dir, '\v_output_f2_7', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_7, strcat(data_dir, '\i_output_f2_7', '_', int2str(i), '.csv'))


    v_output_f2_8 = [v_output_f2_8.time, v_output_f2_8.data, ones(length(v_output_f2_8.data), 1) * 1];
    i_output_f2_8 = [i_output_f2_8.time, i_output_f2_8.data, ones(length(i_output_f2_8.data), 1) * 1];

    writematrix(v_output_f2_8, strcat(data_dir, '\v_output_f2_8', '_', int2str(i), '.csv'))
    writematrix(i_output_f2_8, strcat(data_dir, '\i_output_f2_8', '_', int2str(i), '.csv'))


    v_output_f3_1 = [v_output_f3_1.time, v_output_f3_1.data, ones(length(v_output_f3_1.data), 1) * 2];
    i_output_f3_1 = [i_output_f3_1.time, i_output_f3_1.data, ones(length(i_output_f3_1.data), 1) * 2];

    writematrix(v_output_f3_1, strcat(data_dir, '\v_output_f3_1', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_1, strcat(data_dir, '\i_output_f3_1', '_', int2str(i), '.csv'))


    v_output_f3_2 = [v_output_f3_2.time, v_output_f3_2.data, ones(length(v_output_f3_2.data), 1) * 2];
    i_output_f3_2 = [i_output_f3_2.time, i_output_f3_2.data, ones(length(i_output_f3_2.data), 1) * 2];

    writematrix(v_output_f3_2, strcat(data_dir, '\v_output_f3_2', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_2, strcat(data_dir, '\i_output_f3_2', '_', int2str(i), '.csv'))


    v_output_f3_3 = [v_output_f3_3.time, v_output_f3_3.data, ones(length(v_output_f3_3.data), 1) * 2];
    i_output_f3_3 = [i_output_f3_3.time, i_output_f3_3.data, ones(length(i_output_f3_3.data), 1) * 2];

    writematrix(v_output_f3_3, strcat(data_dir, '\v_output_f3_3', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_3, strcat(data_dir, '\i_output_f3_3', '_', int2str(i), '.csv'))


    v_output_f3_4 = [v_output_f3_4.time, v_output_f3_4.data, ones(length(v_output_f3_4.data), 1) * 2];
    i_output_f3_4 = [i_output_f3_4.time, i_output_f3_4.data, ones(length(i_output_f3_4.data), 1) * 2];

    writematrix(v_output_f3_4, strcat(data_dir, '\v_output_f3_4', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_4, strcat(data_dir, '\i_output_f3_4', '_', int2str(i), '.csv'))


    v_output_f3_5 = [v_output_f3_5.time, v_output_f3_5.data, ones(length(v_output_f3_5.data), 1) * 2];
    i_output_f3_5 = [i_output_f3_5.time, i_output_f3_5.data, ones(length(i_output_f3_5.data), 1) * 2];

    writematrix(v_output_f3_5, strcat(data_dir, '\v_output_f3_5', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_5, strcat(data_dir, '\i_output_f3_5', '_', int2str(i), '.csv'))


    v_output_f3_6 = [v_output_f3_6.time, v_output_f3_6.data, ones(length(v_output_f3_6.data), 1) * 2];
    i_output_f3_6 = [i_output_f3_6.time, i_output_f3_6.data, ones(length(i_output_f3_6.data), 1) * 2];

    writematrix(v_output_f3_6, strcat(data_dir, '\v_output_f3_6', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_6, strcat(data_dir, '\i_output_f3_6', '_', int2str(i), '.csv'))


    v_output_f3_7 = [v_output_f3_7.time, v_output_f3_7.data, ones(length(v_output_f3_7.data), 1) * 2];
    i_output_f3_7 = [i_output_f3_7.time, i_output_f3_7.data, ones(length(i_output_f3_7.data), 1) * 2];

    writematrix(v_output_f3_7, strcat(data_dir, '\v_output_f3_7', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_7, strcat(data_dir, '\i_output_f3_7', '_', int2str(i), '.csv'))


    v_output_f3_8 = [v_output_f3_8.time, v_output_f3_8.data, ones(length(v_output_f3_8.data), 1) * 2];
    i_output_f3_8 = [i_output_f3_8.time, i_output_f3_8.data, ones(length(i_output_f3_8.data), 1) * 2];

    writematrix(v_output_f3_8, strcat(data_dir, '\v_output_f3_8', '_', int2str(i), '.csv'))
    writematrix(i_output_f3_8, strcat(data_dir, '\i_output_f3_8', '_', int2str(i), '.csv'))


    v_output_f4_1 = [v_output_f4_1.time, v_output_f4_1.data, ones(length(v_output_f4_1.data), 1) * 3];
    i_output_f4_1 = [i_output_f4_1.time, i_output_f4_1.data, ones(length(i_output_f4_1.data), 1) * 3];

    writematrix(v_output_f4_1, strcat(data_dir, '\v_output_f4_1', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_1, strcat(data_dir, '\i_output_f4_1', '_', int2str(i), '.csv'))


    v_output_f4_2 = [v_output_f4_2.time, v_output_f4_2.data, ones(length(v_output_f4_2.data), 1) * 3];
    i_output_f4_2 = [i_output_f4_2.time, i_output_f4_2.data, ones(length(i_output_f4_2.data), 1) * 3];

    writematrix(v_output_f4_2, strcat(data_dir, '\v_output_f4_2', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_2, strcat(data_dir, '\i_output_f4_2', '_', int2str(i), '.csv'))


    v_output_f4_3 = [v_output_f4_3.time, v_output_f4_3.data, ones(length(v_output_f4_3.data), 1) * 3];
    i_output_f4_3 = [i_output_f4_3.time, i_output_f4_3.data, ones(length(i_output_f4_3.data), 1) * 3];

    writematrix(v_output_f4_3, strcat(data_dir, '\v_output_f4_3', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_3, strcat(data_dir, '\i_output_f4_3', '_', int2str(i), '.csv'))


    v_output_f4_4 = [v_output_f4_4.time, v_output_f4_4.data, ones(length(v_output_f4_4.data), 1) * 3];
    i_output_f4_4 = [i_output_f4_4.time, i_output_f4_4.data, ones(length(i_output_f4_4.data), 1) * 3];

    writematrix(v_output_f4_4, strcat(data_dir, '\v_output_f4_4', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_4, strcat(data_dir, '\i_output_f4_4', '_', int2str(i), '.csv'))


    v_output_f4_5 = [v_output_f4_5.time, v_output_f4_5.data, ones(length(v_output_f4_5.data), 1) * 3];
    i_output_f4_5 = [i_output_f4_5.time, i_output_f4_5.data, ones(length(i_output_f4_5.data), 1) * 3];

    writematrix(v_output_f4_5, strcat(data_dir, '\v_output_f4_5', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_5, strcat(data_dir, '\i_output_f4_5', '_', int2str(i), '.csv'))


    v_output_f4_6 = [v_output_f4_6.time, v_output_f4_6.data, ones(length(v_output_f4_6.data), 1) * 3];
    i_output_f4_6 = [i_output_f4_6.time, i_output_f4_6.data, ones(length(i_output_f4_6.data), 1) * 3];

    writematrix(v_output_f4_6, strcat(data_dir, '\v_output_f4_6', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_6, strcat(data_dir, '\i_output_f4_6', '_', int2str(i), '.csv'))


    v_output_f4_7 = [v_output_f4_7.time, v_output_f4_7.data, ones(length(v_output_f4_7.data), 1) * 3];
    i_output_f4_7 = [i_output_f4_7.time, i_output_f4_7.data, ones(length(i_output_f4_7.data), 1) * 3];

    writematrix(v_output_f4_7, strcat(data_dir, '\v_output_f4_7', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_7, strcat(data_dir, '\i_output_f4_7', '_', int2str(i), '.csv'))


    v_output_f4_8 = [v_output_f4_8.time, v_output_f4_8.data, ones(length(v_output_f4_8.data), 1) * 3];
    i_output_f4_8 = [i_output_f4_8.time, i_output_f4_8.data, ones(length(i_output_f4_8.data), 1) * 3];

    writematrix(v_output_f4_8, strcat(data_dir, '\v_output_f4_8', '_', int2str(i), '.csv'))
    writematrix(i_output_f4_8, strcat(data_dir, '\i_output_f4_8', '_', int2str(i), '.csv'))


    v_output_f5_1 = [v_output_f5_1.time, v_output_f5_1.data, ones(length(v_output_f5_1.data), 1) * 4];
    i_output_f5_1 = [i_output_f5_1.time, i_output_f5_1.data, ones(length(i_output_f5_1.data), 1) * 4];

    writematrix(v_output_f5_1, strcat(data_dir, '\v_output_f5_1', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_1, strcat(data_dir, '\i_output_f5_1', '_', int2str(i), '.csv'))


    v_output_f5_2 = [v_output_f5_2.time, v_output_f5_2.data, ones(length(v_output_f5_2.data), 1) * 4];
    i_output_f5_2 = [i_output_f5_2.time, i_output_f5_2.data, ones(length(i_output_f5_2.data), 1) * 4];

    writematrix(v_output_f5_2, strcat(data_dir, '\v_output_f5_2', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_2, strcat(data_dir, '\i_output_f5_2', '_', int2str(i), '.csv'))


    v_output_f5_3 = [v_output_f5_3.time, v_output_f5_3.data, ones(length(v_output_f5_3.data), 1) * 4];
    i_output_f5_3 = [i_output_f5_3.time, i_output_f5_3.data, ones(length(i_output_f5_3.data), 1) * 4];

    writematrix(v_output_f5_3, strcat(data_dir, '\v_output_f5_3', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_3, strcat(data_dir, '\i_output_f5_3', '_', int2str(i), '.csv'))


    v_output_f5_4 = [v_output_f5_4.time, v_output_f5_4.data, ones(length(v_output_f5_4.data), 1) * 4];
    i_output_f5_4 = [i_output_f5_4.time, i_output_f5_4.data, ones(length(i_output_f5_4.data), 1) * 4];

    writematrix(v_output_f5_4, strcat(data_dir, '\v_output_f5_4', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_4, strcat(data_dir, '\i_output_f5_4', '_', int2str(i), '.csv'))


    v_output_f5_5 = [v_output_f5_5.time, v_output_f5_5.data, ones(length(v_output_f5_5.data), 1) * 4];
    i_output_f5_5 = [i_output_f5_5.time, i_output_f5_5.data, ones(length(i_output_f5_5.data), 1) * 4];

    writematrix(v_output_f5_5, strcat(data_dir, '\v_output_f5_5', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_5, strcat(data_dir, '\i_output_f5_5', '_', int2str(i), '.csv'))


    v_output_f5_6 = [v_output_f5_6.time, v_output_f5_6.data, ones(length(v_output_f5_6.data), 1) * 4];
    i_output_f5_6 = [i_output_f5_6.time, i_output_f5_6.data, ones(length(i_output_f5_6.data), 1) * 4];

    writematrix(v_output_f5_6, strcat(data_dir, '\v_output_f5_6', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_6, strcat(data_dir, '\i_output_f5_6', '_', int2str(i), '.csv'))


    v_output_f5_7 = [v_output_f5_7.time, v_output_f5_7.data, ones(length(v_output_f5_7.data), 1) * 4];
    i_output_f5_7 = [i_output_f5_7.time, i_output_f5_7.data, ones(length(i_output_f5_7.data), 1) * 4];

    writematrix(v_output_f5_7, strcat(data_dir, '\v_output_f5_7', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_7, strcat(data_dir, '\i_output_f5_7', '_', int2str(i), '.csv'))


    v_output_f5_8 = [v_output_f5_8.time, v_output_f5_8.data, ones(length(v_output_f5_8.data), 1) * 4];
    i_output_f5_8 = [i_output_f5_8.time, i_output_f5_8.data, ones(length(i_output_f5_8.data), 1) * 4];

    writematrix(v_output_f5_8, strcat(data_dir, '\v_output_f5_8', '_', int2str(i), '.csv'))
    writematrix(i_output_f5_8, strcat(data_dir, '\i_output_f5_8', '_', int2str(i), '.csv'))



    fprintf(strcat('stage ', int2str(i), ' of simulation -> done!\n'));
end