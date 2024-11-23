# Matlab script

## Overview
The script will loop through the filtered_data folder and extract all the voltage information, apply the FFT, and store it in a struct data type names `EEG_Analyzed_Data`. It also contains the code to plot accross electrodes and experiments for a given patient.

You have to change the file path in the first line of the script ot point to the place where `filtered_data` is stored on your computer. Just open filtered_data in file explorer, go to the bar on the top where it shows which folders you're in, right click and copy address as text.

## Accessing Data
The data is stored in `EEG_Analyzed_Data`, and can be accessed using the following syntax: 
```
EEG_Analyzed_Data.(subject).(experiment).(electrode)
```
for example, with the patient `s01` experiment `ex05` and electrode `right_parietal`, the code to access the FFT data is 
```
EEG_Analyzed_Data.s01.ex05.right_parietal
```
This will return an array where each index corresponds to a frequency, and the value in the array at the index represents the strength of the frequency. 

# not our stuff
-----------------------------------------------------------


# Data SET Methods 
## Determination of Eligibility

1. The subjects filled out a questionnaire that contains the subjects’ information.
2. Additionally, the subjects read and agreed to a detailed informed consent.

## Preparation and Installation of Equipment

1. The experiments start with the installation of the equipment needed. This includes four gold-cup electrodes with Ten20 Conductive Paste on the scalp.
2. The electrodes were placed on the T7, F8, Cz, and P4 positions according to the 10/10 international EEG system [1], which were chosen according to these publications [2-4].
3. Additionally, two electrodes were placed in the left and right ears as a reference electrode and ground electrode, respectively.
4. Once all of the electrodes were installed, a simple calibration was performed to ensure that everything worked correctly.
5. The calibration included checking the connectivity of the electrodes by measuring the skin impedance.
6. The non-noisy two-minutes were segmented from the raw data.

## Testing and Data Recording


1. Three minutes of resting-state, eyes open for three sessions.
2. Three minutes of resting-state, eyes closed for three sessions.
3. Three minutes of resting-state, eyes open for three sessions using noise isolation headset.
4. Three minutes of resting-state, eyes open for three sessions using noise isolation headset.
5. Three minutes of listening to a song in their native language using in-ear headphones.
6. Three minutes of listening to a song in a non-native language using in-ear headphones.
7. Three minutes of listening to neutral music using in-ear headphones.
8. Three minutes of listening to a song in their native language using bone-conducting headphones.
9. Three minutes of listening to a song in a non-native language using bone-conducting headphones.
10. Three minutes of listening to neutral music using bone-conducting headphones.

**Notes:**
- If the person is Italian: the Arabic song was used for the non-Native song.
- If the person is not Italian: the Italian song was used for the non-Native song.
- Neutral music is a musical genre that emphasizes tranquillity, relaxation, and peaceful soundscapes. It is typically composed of instrumental music (music with no or wordless vocals), and it may involve acoustic instruments, electric synthesizers, and even recorded nature sounds.

# Data Description

The Data are provided in .csv and WFDB formats. The recordings are named as follows:

`sXX_exXX_sXX`: `s(Subject Number)_ex(Experiment Number)_s(Session Number. Just for ex01 and ex02)`.

**Example:** `s03_ex02_s01`: Subject 03 Experiment 02 Session.