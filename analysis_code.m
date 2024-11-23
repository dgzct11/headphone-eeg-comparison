cd("C:\DavidZaha\Programming\Vanderbilt\sysphys\headphone-eeg-comparison\filtered_data")

files = dir('*.csv');

% Initialize a structure array to store results
EEG_Analyzed_Data = struct();



for i = 1:length(files)
    filename = files(i).name;
    
    % Extract subject and experiment info from the filename
    % Assuming filename format: 'subjectX_experimentY.csv'
    [~, name, ~] = fileparts(filename);  % Remove '.csv' extension
    parts = split(name, '_');            % Split by underscore
    subject = parts{1};
    experiment = parts{2};
    
    % Read data from the CSV file
    data = readtable(filename);
    
    % Extract time and electrode columns
    time = data{:, 1};        % First column is time
    electrode1 = data{:, 2};  % Second column is electrode 1
    electrode2 = data{:, 3};  % Third column is electrode 2
    electrode3 = data{:, 4};  % Fourth column is electrode 3
    electrode4 = data{:, 5};  % Fifth column is electrode 4
    
    % Calculate sampling frequency (assuming uniform sampling)
    Fs = 1 / 0.001;
    N = length(time);         % Number of samples
    
    % Frequency vector for plotting
    f = (0:N-1)*(Fs/N);
    
    % Perform FFT on each electrode signal
    Y1 = fft(electrode1);
    Y2 = fft(electrode2);
    Y3 = fft(electrode3);
    Y4 = fft(electrode4);
    
    % Store the results
    EEG_Analyzed_Data.(subject).(experiment).right_parietal = Y1;
    EEG_Analyzed_Data.(subject).(experiment).central = Y2;
    EEG_Analyzed_Data.(subject).(experiment).right_frontal = Y3;
    EEG_Analyzed_Data.(subject).(experiment).left_temporal = Y4;

    
end



%%
% accessing data from the struct
% EEG_Analyzed_Data.s01.ex05.right_frontal

disp(EEG_Analyzed_Data.s01)

%%