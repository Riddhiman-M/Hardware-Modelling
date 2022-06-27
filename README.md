# Verilog_Hardware-Modelling
<br>
Each of the two models in this project has 2 implementations - 1. On Verilog and 2. On the Circuit Design Simulator
<br>
The Verilog code has been compiled using Icarus Verilog and the output waveforms observed using GtkWave. The Circuit Design has been created and simulated on NI Multisim.
<hr>
<ul>
  <li>Model 1: <br>
  In this model, the user first enters a password which is stored using a 4-bit register made up of D flip-flops. This code is then compared with the sequentially entered user input using combinatorial Logic gates. The sequential input is passed and temporarily stored in a shift register, to be able to compare the 4-bits of the code and input together.<br>
    **Corresponding Verilog code output:**
    <br>
    <img src="https://user-images.githubusercontent.com/89708853/175960818-05e4a758-d360-480b-9de8-c69aa87c4724.png" width=70% height=70%>
  </li>
  <li>Model 2: <br>
    Here the objective is to detect the code '110'. This is done by modelling a Moore Model based Finite State Machine using 2 flip flops (because the corresponding state diagram consisted of 4 states). The combinatorial logic desired was decided by making a State table and solving the necessary Karnaugh Maps.<br>
    Corresponding Verilog code output:<br>
    <img src="https://user-images.githubusercontent.com/89708853/175961713-29f7789e-60a7-441d-bfe9-7ae8a346cba4.png" width=70% height=70%>
  </li>
</ul>
