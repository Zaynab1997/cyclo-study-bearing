# Roller Bearing analysis
While the machine is running, damaged components of the bearing trigger vibrations in the structure of the machine when it contacts other surfaces. These components appear at specific frequencies dictated by the geometry of the bearing and its rotation frequency.

## I. Problem Statement

## 1. Bearing fault signature
The expected patterns in the Envelope spectrum for best-known faults of the REB (ball, cage, inner and outer race), varies with the variation of fault types and its theoretical frequencies are calculated from the following formulas:
### a. Ball Pass Frequency Outer race (BPFO):
![image](https://user-images.githubusercontent.com/36966005/159518767-3f479643-83e2-4e9a-87f2-926e7034ec8d.png)
### b. Ball Pass Frequency Inner race (BPFI):
![image](https://user-images.githubusercontent.com/36966005/159518830-bd594e3b-294a-4d71-b0ae-d5d385de31fd.png)
### c. Fundamental train Frequency:
![image](https://user-images.githubusercontent.com/36966005/159518891-bae3798f-0818-43c2-9fb9-a0b600dc7aad.png)
### d. Ball Spin Frequency (BSF):
![image](https://user-images.githubusercontent.com/36966005/159518935-7b9b1f80-6470-4379-a4ec-d2c79f85f81a.png)

where 𝑓𝑟 is the shaft speed, n the number of rolling elements, φ is the contact angle, d the REB diameter and D the pitch circle diameter. 
These frequencies are calculated from the geometry of the bearing assuming a perfect rolling motion of the rolling element. Whereas in reality, a random frequency deviation is involved (usually at the order of 1-2% from calculated ones) and are located in the vicinity of the theoretical frequencies due to the slip phenomenon. In details, the angle contact varies with the position of each rolling element, since the ratio of the radial load to the evolution of the axial load changes, giving birth to this phenomenon. Thereby, each rolling element will have a different diameter and will try to roll at different speed, while the cage limits the deviation of the rolling elements from their mean position, thus causing some random slip. This random deviation, despite being small, compromises the fault follow-up on a frequency basis contrary to the gear cases. It implies by consequence the need to look for the fault in a centered narrow band having a width of 1 to 2% as mentioned above. 
The inner race fault (respectively ball fault) involving a periodic amplitude modulation is characterized by harmonics at the BPFI (respectively BSF), and indeed at the sub-bands identically tantamount to fr (respectively FTF). Nevertheless, an outer race fault involved in a constant modulation, is characterized only by harmonics at the BPFO. In contrast to the ball and the inner fault, the outer race is fix, in consequence, the transmission path between the fault and the signal acquisition point is fix, not inducing any sidebands.

![image](https://user-images.githubusercontent.com/36966005/159519274-643fc253-5bf3-4aa1-87c4-ecc0d3d648c9.png)

## 2. Bearing Data Center
Over the last decade, data from the Case Western Reserve University (CWRU) Bearing Data Center has become a standard reference in the bearing diagnosis field, used to test the efficiency of the analysis algorithms. This data is publicly available on the following web site:  https://csegroups.case.edu/bearingdatacenter/pages/welcome-case-western-reserve-university-bearing-data-center-website.

![image](https://user-images.githubusercontent.com/36966005/159519516-322a35cc-5250-4b87-829e-a5ff5f7be553.png)

The test stands presented consists of a 2 hp Reliance Electric motor driving a shaft on which a torque transducer and encoder are mounted. Torque is applied to the shaft via a dynamometer and electronic control system. Four types of vibration signals are collected (normal, ball fault, inner race fault, and outer race fault) with a sampling frequency of 48 and 12 KHz, acquired by bearing accelerometer sensors under different operating loads and speed conditions. The bearing type is SKF6205-2RS JEM SKF a deep groove ball bearing, according to its geometric presented in Table 1, characteristic frequencies can be easily calculated using the formula mentioned above. Such frequencies are in function of 𝑓0. 𝑓0 represents the rotational frequency. 

In this study only the Drive End (DE) data with the sampling frequency being 12kHz, and 48KHz will be analyzed.

![image](https://user-images.githubusercontent.com/36966005/159519890-bb741423-8155-4def-9688-a0077b5b22fe.png)
![image](https://user-images.githubusercontent.com/36966005/159520044-3ffaa608-6fcd-4bfb-ba20-fd9c23b76af7.png)

## 3. Signals to be analyzed
This section aims to applicate the studied analyzing technique, in order to:

  ###  1. Identifying the bearing fundamental frequency (determine the resonance frequency of the bearing) only to preserve frequency components related to fault impacts.
  ###  2. Detect and identifying the existing bearing fault.
  
 Different faulty signals from the Bearing data center will be used. A collection of signals that contain the three most common faults in a bearing: the ball fault, the inner race and the outer race fault.
 ## 3.1. Normal case 
Among the 4 normal signals provided in this site -http://csegroups.case.edu/bearingdatacenter/pages/normal-baseline-data- only the signal Normal_3 (100) should be analyzed (Group 1). Such signal has a speed equal to 1730 rpm-28.833 (1730/60)- and recorded under 3 (Hp) load. Its sample rates were 48kHz. In the envelope spectrum only pics related to shaft speed are presented (28.48, 28.48/2,28.48*2…). The small deviation between the actual shaft frequency and the analytical one is due to the slip phenomena and the frequency resolution. For Group 2, signal 98(48k, 1772 rpm, 1Hp) should be analyzed.

![image](https://user-images.githubusercontent.com/36966005/159520518-10062962-6167-4d38-a1d6-e97db90539bc.png)

 ## 3.2. Ball Fault 
Tracking the ball fault is the most difficult to get, for a classical (BSF) sub-bands in frequency of cage (FTF) appear, sometimes those spikes appear in half of (BSF), on the (BPFO) or (BPFI). Signals 122 (48K, 1797 rpm, 0Hp), 124 (48K, 1797 rpm, 0Hp), 190 (48K, 1797 rpm, 0Hp) should be analyzed for Group 1, for Group 2: 123 (48k, 1772 rpm, 1Hp), 189 (48k, 1797 rpm, 0 Hp), and 229 (48k,1730 rpm, 3Hp).
 ## 3.3. Inner Race Fault 
As mentioned before (in section 2), the inner race fault involves a periodic amplitude modulation. The latter is resulting of the inner race rotation at the shaft frequency. Such signal is characterized by harmonics at the BPFI and indeed at the side-bands identically tantamount to fr (respectively FTF).
To validate these properties, signal 211 will be used. figure 4, shows series of impulse responses at BPFI, amplitude modulated periodically at the shaft speed, the rate at which the fault passes through the load zone. The envelope spectrum shows series of harmonics at BPFI, with spaced pics at shaft speed around each harmonics, as well as a number of harmonics of the shaft speed. 
Form signals that have an inner race fault only record 209DE (12k, 1797 rpm, 0Hp), the 169(12k, 1797 rpm, 0Hp) and the 3001(12k, 1797 rpm, 0Hp), should be analyzed for Group 1, for Group 2: 170 (12k, 1772 rpm, 1Hp), 211 (12k, 1750 rpm, 2 Hp), and 3004 (12k,1730 rpm, 3Hp).
    ![image](https://user-images.githubusercontent.com/36966005/159521078-7e081db5-ab43-46a3-b626-5d4468926075.png)

    
 ## 3.4. Outer Race Fault
As mentioned in section 2, the outer race is fix, in consequence, the transmission path between the fault and the signal acquisition point is fix, not inducing any sidebands.
To validate these properties, signal 130DE will be used. Figure 4 shows a series of impulse responses at BPFO. The envelope spectrum shows a series of harmonics of BPFO, as well as a number of harmonics of the shaft speed. 
    Form signals that have an outer race fault only record 130DE (12k, 1797 rpm, 0Hp), 169(12k, 1797 rpm, 0Hp) and 3001(12k, 1797 rpm, 0Hp), should be analyzed for Group1; for Group 2: 131 (12k, 1772 rpm, 1Hp),199 (12k, 1750 rpm, 2 Hp), and 237(12k,1730 rpm, 3Hp).
    ![image](https://user-images.githubusercontent.com/36966005/159521125-2689ac87-54a1-4220-a169-7ea230bd78ed.png)

