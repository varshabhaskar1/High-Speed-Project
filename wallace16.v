
//`timescale 1ns / 1ps


module wallace16(output [31:0] product, input [15:0] x, y, input clock);

reg p [15:0][15:0];                  // array which stores the partial products

wire [278:0] s ,c ;  
wire sum[23:0];
wire c1;
assign c1=0;               //iintermediate sum and carry

integer i,j;

always@(y, x)            //x is multiplicand AND y is multiplier

begin

// creating the partial products.

for ( i = 0; i <= 15; i = i + 1)

for ( j = 0; j <= 15; j = j + 1)

p[j][i] <= x[j] & y[i];

//all the partial products have been obtained and stored in a array of 8 X 8 matrix.

end


//step 1 from 16 to 11

HA ha1(.sum(s[0]), .carry(c[1]),.a(p[1][0]),.b(p[0][1]), .clock(clock));
FA fa1(.sum(s[1]),.carry(c[2]),.a(p[2][0]),.b(p[1][1]),.cin(p[0][2]), .clock(clock));
FA fa2(.sum(s[2]),.carry(c[3]),.a(p[3][0]),.b(p[2][1]),.cin(p[1][2]), .clock(clock));
FA fa3(.sum(s[3]),.carry(c[4]),.a(p[4][0]),.b(p[3][1]),.cin(p[2][2]), .clock(clock));
FA fa4(.sum(s[4]),.carry(c[5]),.a(p[5][0]),.b(p[4][1]),.cin(p[3][2]), .clock(clock));
FA fa5(.sum(s[5]),.carry(c[6]),.a(p[6][0]),.b(p[5][1]),.cin(p[4][2]), .clock(clock));
FA fa6(.sum(s[6]),.carry(c[7]),.a(p[7][0]),.b(p[6][1]),.cin(p[5][2]), .clock(clock));
FA fa7(.sum(s[7]),.carry(c[8]),.a(p[8][0]),.b(p[7][1]),.cin(p[6][2]), .clock(clock));
FA fa8(.sum(s[8]),.carry(c[9]),.a(p[9][0]),.b(p[8][1]),.cin(p[7][2]), .clock(clock));
FA fa9(.sum(s[9]),.carry(c[10]),.a(p[10][0]),.b(p[9][1]),.cin(p[8][2]), .clock(clock));
FA fa10(.sum(s[10]),.carry(c[11]),.a(p[11][0]),.b(p[10][1]),.cin(p[9][2]), .clock(clock));
FA fa11(.sum(s[11]),.carry(c[12]),.a(p[12][0]),.b(p[11][1]),.cin(p[10][2]), .clock(clock));
FA fa12(.sum(s[12]),.carry(c[13]),.a(p[13][0]),.b(p[12][1]),.cin(p[11][2]), .clock(clock));
FA fa13(.sum(s[13]),.carry(c[14]),.a(p[14][0]),.b(p[13][1]),.cin(p[12][2]), .clock(clock));
FA fa14(.sum(s[14]),.carry(c[15]),.a(p[15][0]),.b(p[14][1]),.cin(p[13][2]), .clock(clock));
HA ha2(.sum(s[15]), .carry(c[16]),.a(p[15][1]),.b(p[14][2]), .clock(clock));



HA ha3(.sum(s[16]), .carry(c[17]),.a(p[1][3]),.b(p[0][4]), .clock(clock));
FA fa16(.sum(s[17]),.carry(c[18]),.a(p[2][3]),.b(p[1][4]),.cin(p[0][5]), .clock(clock));
FA fa17(.sum(s[18]),.carry(c[19]),.a(p[3][3]),.b(p[2][4]),.cin(p[1][5]), .clock(clock));
FA fa18(.sum(s[19]),.carry(c[20]),.a(p[4][3]),.b(p[3][4]),.cin(p[2][5]), .clock(clock));
FA fa19(.sum(s[20]),.carry(c[21]),.a(p[5][3]),.b(p[4][4]),.cin(p[3][5]), .clock(clock));
FA fa20(.sum(s[21]),.carry(c[22]),.a(p[6][3]),.b(p[5][4]),.cin(p[4][5]), .clock(clock));
FA fa21(.sum(s[22]),.carry(c[23]),.a(p[7][3]),.b(p[6][4]),.cin(p[5][5]), .clock(clock));
FA fa22(.sum(s[23]),.carry(c[24]),.a(p[8][3]),.b(p[7][4]),.cin(p[6][5]), .clock(clock));
FA fa23(.sum(s[24]),.carry(c[25]),.a(p[9][3]),.b(p[8][4]),.cin(p[7][5]), .clock(clock));
FA fa24(.sum(s[25]),.carry(c[26]),.a(p[10][3]),.b(p[9][4]),.cin(p[8][5]), .clock(clock));
FA fa25(.sum(s[26]),.carry(c[27]),.a(p[11][3]),.b(p[10][4]),.cin(p[9][5]), .clock(clock));
FA fa26(.sum(s[27]),.carry(c[28]),.a(p[12][3]),.b(p[11][4]),.cin(p[10][5]), .clock(clock));
FA fa27(.sum(s[28]),.carry(c[29]),.a(p[13][3]),.b(p[12][4]),.cin(p[11][5]), .clock(clock));
FA fa28(.sum(s[29]),.carry(c[30]),.a(p[14][3]),.b(p[13][4]),.cin(p[12][5]), .clock(clock));
FA fa29(.sum(s[30]),.carry(c[31]),.a(p[15][3]),.b(p[14][4]),.cin(p[13][5]), .clock(clock));
HA ha4(.sum(s[31]), .carry(c[32]),.a(p[15][4]),.b(p[14][5]), .clock(clock));


HA ha5(.sum(s[32]), .carry(c[33]),.a(p[1][6]),.b(p[0][7]), .clock(clock));
FA fa30(.sum(s[33]),.carry(c[34]),.a(p[2][6]),.b(p[1][7]),.cin(p[0][8]), .clock(clock));
FA fa31(.sum(s[34]),.carry(c[35]),.a(p[3][6]),.b(p[2][7]),.cin(p[1][8]), .clock(clock));
FA fa32(.sum(s[35]),.carry(c[36]),.a(p[4][6]),.b(p[3][7]),.cin(p[2][8]), .clock(clock));
FA fa33(.sum(s[36]),.carry(c[37]),.a(p[5][6]),.b(p[4][7]),.cin(p[3][8]), .clock(clock));
FA fa34(.sum(s[37]),.carry(c[38]),.a(p[6][6]),.b(p[5][7]),.cin(p[4][8]), .clock(clock));
FA fa35(.sum(s[38]),.carry(c[39]),.a(p[7][6]),.b(p[6][7]),.cin(p[5][8]), .clock(clock));
FA fa36(.sum(s[39]),.carry(c[40]),.a(p[8][6]),.b(p[7][7]),.cin(p[6][8]), .clock(clock));
FA fa37(.sum(s[40]),.carry(c[41]),.a(p[9][6]),.b(p[8][7]),.cin(p[7][8]), .clock(clock));
FA fa38(.sum(s[41]),.carry(c[42]),.a(p[10][6]),.b(p[9][7]),.cin(p[8][8]), .clock(clock));
FA fa39(.sum(s[42]),.carry(c[43]),.a(p[11][6]),.b(p[10][7]),.cin(p[9][8]), .clock(clock));
FA fa40(.sum(s[43]),.carry(c[44]),.a(p[12][6]),.b(p[11][7]),.cin(p[10][8]), .clock(clock));
FA fa41(.sum(s[44]),.carry(c[45]),.a(p[13][6]),.b(p[12][7]),.cin(p[11][8]), .clock(clock));
FA fa42(.sum(s[45]),.carry(c[46]),.a(p[14][6]),.b(p[13][7]),.cin(p[12][8]), .clock(clock));
FA fa43(.sum(s[46]),.carry(c[47]),.a(p[15][6]),.b(p[14][7]),.cin(p[13][8]), .clock(clock));
HA ha6(.sum(s[47]), .carry(c[48]),.a(p[15][7]),.b(p[14][8]), .clock(clock));



HA ha7(.sum(s[48]), .carry(c[49]),.a(p[1][9]),.b(p[0][10]), .clock(clock));
FA fa44(.sum(s[49]),.carry(c[50]),.a(p[2][9]),.b(p[1][10]),.cin(p[0][11]), .clock(clock));
FA fa45(.sum(s[50]),.carry(c[51]),.a(p[3][9]),.b(p[2][10]),.cin(p[1][11]), .clock(clock));
FA fa46(.sum(s[51]),.carry(c[52]),.a(p[4][9]),.b(p[3][10]),.cin(p[2][11]), .clock(clock));
FA fa47(.sum(s[52]),.carry(c[53]),.a(p[5][9]),.b(p[4][10]),.cin(p[3][11]), .clock(clock));
FA fa48(.sum(s[53]),.carry(c[54]),.a(p[6][9]),.b(p[5][10]),.cin(p[4][11]), .clock(clock));
FA fa49(.sum(s[54]),.carry(c[55]),.a(p[7][9]),.b(p[6][10]),.cin(p[5][11]), .clock(clock));
FA fa50(.sum(s[55]),.carry(c[56]),.a(p[8][9]),.b(p[7][10]),.cin(p[6][11]), .clock(clock));
FA fa51(.sum(s[56]),.carry(c[57]),.a(p[9][9]),.b(p[8][10]),.cin(p[7][11]), .clock(clock));
FA fa52(.sum(s[57]),.carry(c[58]),.a(p[10][9]),.b(p[9][10]),.cin(p[8][11]), .clock(clock));
FA fa53(.sum(s[58]),.carry(c[59]),.a(p[11][9]),.b(p[10][10]),.cin(p[9][11]), .clock(clock));
FA fa54(.sum(s[59]),.carry(c[60]),.a(p[12][9]),.b(p[11][10]),.cin(p[10][11]), .clock(clock));
FA fa55(.sum(s[60]),.carry(c[61]),.a(p[13][9]),.b(p[12][10]),.cin(p[11][11]), .clock(clock));
FA fa56(.sum(s[61]),.carry(c[62]),.a(p[14][9]),.b(p[13][10]),.cin(p[12][11]), .clock(clock));
FA fa57(.sum(s[62]),.carry(c[63]),.a(p[15][9]),.b(p[14][10]),.cin(p[13][11]), .clock(clock));
HA ha8(.sum(s[63]), .carry(c[64]),.a(p[15][10]),.b(p[14][11]), .clock(clock));


HA ha70(.sum(s[64]), .carry(c[65]),.a(p[1][12]),.b(p[0][13]), .clock(clock));
FA fa440(.sum(s[65]),.carry(c[66]),.a(p[2][12]),.b(p[1][13]),.cin(p[0][14]), .clock(clock));
FA fa450(.sum(s[66]),.carry(c[67]),.a(p[3][12]),.b(p[2][13]),.cin(p[1][14]), .clock(clock));
FA fa460(.sum(s[67]),.carry(c[68]),.a(p[4][12]),.b(p[3][13]),.cin(p[2][14]), .clock(clock));
FA fa470(.sum(s[68]),.carry(c[69]),.a(p[5][12]),.b(p[4][13]),.cin(p[3][14]), .clock(clock));
FA fa480(.sum(s[69]),.carry(c[70]),.a(p[6][12]),.b(p[5][13]),.cin(p[4][14]), .clock(clock));
FA fa490(.sum(s[70]),.carry(c[71]),.a(p[7][12]),.b(p[6][13]),.cin(p[5][14]), .clock(clock));
FA fa500(.sum(s[71]),.carry(c[72]),.a(p[8][12]),.b(p[7][13]),.cin(p[6][14]), .clock(clock));
FA fa510(.sum(s[72]),.carry(c[73]),.a(p[9][12]),.b(p[8][13]),.cin(p[7][14]), .clock(clock));
FA fa520(.sum(s[73]),.carry(c[74]),.a(p[10][12]),.b(p[9][13]),.cin(p[8][14]), .clock(clock));
FA fa530(.sum(s[74]),.carry(c[75]),.a(p[11][12]),.b(p[10][13]),.cin(p[9][14]), .clock(clock));
FA fa540(.sum(s[75]),.carry(c[76]),.a(p[12][12]),.b(p[11][13]),.cin(p[10][14]), .clock(clock));
FA fa550(.sum(s[76]),.carry(c[77]),.a(p[13][12]),.b(p[12][13]),.cin(p[11][14]), .clock(clock));
FA fa560(.sum(s[77]),.carry(c[78]),.a(p[14][12]),.b(p[13][13]),.cin(p[12][14]), .clock(clock));
FA fa570(.sum(s[78]),.carry(c[79]),.a(p[15][12]),.b(p[14][13]),.cin(p[13][14]), .clock(clock));
HA ha80(.sum(s[79]), .carry(c[80]),.a(p[15][13]),.b(p[14][14]), .clock(clock));


// end of step 1

//start of step 2

HA ha9(.sum(s[81]), .carry(c[82]),.a(s[1]),.b(c[1]), .clock(clock));
FA fa58(.sum(s[82]),.carry(c[83]),.a(s[2]),.b(c[2]),.cin(p[0][3]), .clock(clock));
FA fa59(.sum(s[83]),.carry(c[84]),.a(s[3]),.b(c[3]),.cin(s[16]), .clock(clock));
FA fa60(.sum(s[84]),.carry(c[85]),.a(s[4]),.b(c[4]),.cin(s[17]), .clock(clock));
FA fa61(.sum(s[85]),.carry(c[86]),.a(s[5]),.b(c[5]),.cin(s[18]), .clock(clock));
FA fa62(.sum(s[86]),.carry(c[87]),.a(s[6]),.b(c[6]),.cin(s[19]), .clock(clock));
FA fa63(.sum(s[87]),.carry(c[88]),.a(s[7]),.b(c[7]),.cin(s[20]), .clock(clock));
FA fa64(.sum(s[88]),.carry(c[89]),.a(s[8]),.b(c[8]),.cin(s[21]), .clock(clock));
FA fa65(.sum(s[89]),.carry(c[90]),.a(s[9]),.b(c[9]),.cin(s[22]), .clock(clock));
FA fa66(.sum(s[90]),.carry(c[91]),.a(s[10]),.b(c[10]),.cin(s[23]), .clock(clock));
FA fa67(.sum(s[91]),.carry(c[92]),.a(s[11]),.b(c[11]),.cin(s[24]), .clock(clock));
FA fa68(.sum(s[92]),.carry(c[93]),.a(s[12]),.b(c[12]),.cin(s[25]), .clock(clock));
FA fa69(.sum(s[93]),.carry(c[94]),.a(s[13]),.b(c[13]),.cin(s[26]), .clock(clock));
FA fa70(.sum(s[94]),.carry(c[95]),.a(s[14]),.b(c[14]),.cin(s[27]), .clock(clock));
FA fa71(.sum(s[95]),.carry(c[96]),.a(s[15]),.b(c[15]),.cin(s[28]), .clock(clock));
FA fa72(.sum(s[96]), .carry(c[97]),.a(s[29]),.b(p[15][2]),.cin(c[16]), .clock(clock));



HA ha10(.sum(s[97]), .carry(c[98]),.a(p[0][6]),.b(c[18]), .clock(clock));
HA ha11(.sum(s[98]), .carry(c[99]),.a(s[32]),.b(c[19]), .clock(clock));
FA fa73(.sum(s[99]), .carry(c[100]),.a(s[33]),.b(c[33]),.cin(c[20]), .clock(clock));
FA fa74(.sum(s[100]),.carry(c[101]),.a(s[34]),.b(c[34]),.cin(c[21]), .clock(clock));
FA fa75(.sum(s[101]),.carry(c[102]),.a(s[35]),.b(c[35]),.cin(c[22]), .clock(clock));
FA fa76(.sum(s[102]),.carry(c[103]),.a(s[36]),.b(c[36]),.cin(c[23]), .clock(clock));
FA fa77(.sum(s[103]),.carry(c[104]),.a(s[37]),.b(c[37]),.cin(c[24]), .clock(clock));
FA fa78(.sum(s[104]),.carry(c[105]),.a(s[38]),.b(c[38]),.cin(c[25]), .clock(clock));
FA fa79(.sum(s[105]),.carry(c[106]),.a(s[39]),.b(c[39]),.cin(c[26]), .clock(clock));
FA fa80(.sum(s[106]),.carry(c[107]),.a(s[40]),.b(c[40]),.cin(c[27]), .clock(clock));
FA fa81(.sum(s[107]),.carry(c[108]),.a(s[41]),.b(c[41]),.cin(c[28]), .clock(clock));
FA fa82(.sum(s[108]),.carry(c[109]),.a(s[42]),.b(c[42]),.cin(c[29]), .clock(clock));
FA fa83(.sum(s[109]),.carry(c[110]),.a(s[43]),.b(c[43]),.cin(c[30]), .clock(clock));
FA fa84(.sum(s[110]),.carry(c[111]),.a(s[44]),.b(c[44]),.cin(c[31]), .clock(clock));
FA fa85(.sum(s[111]),.carry(c[112]),.a(s[45]),.b(c[45]),.cin(c[32]), .clock(clock));
HA ha110(.sum(s[112]), .carry(c[113]),.a(s[46]),.b(c[46]), .clock(clock));
HA ha12(.sum(s[113]), .carry(c[114]),.a(s[47]),.b(c[47]), .clock(clock));
HA ha13(.sum(s[114]), .carry(c[115]),.a(p[15][8]),.b(c[48]), .clock(clock));



HA ha14(.sum(s[115]), .carry(c[116]),.a(s[49]),.b(c[49]), .clock(clock));
FA fa86(.sum(s[116]), .carry(c[117]),.a(s[50]),.b(c[50]),.cin(p[0][12]), .clock(clock));
FA fa274(.sum(s[117]), .carry(c[118]),.a(s[51]),.b(c[51]),.cin(s[64]), .clock(clock));
FA fa275(.sum(s[118]),.carry(c[119]),.a(s[52]),.b(c[52]),.cin(s[65]), .clock(clock));
FA fa276(.sum(s[119]),.carry(c[120]),.a(s[53]),.b(c[53]),.cin(s[66]), .clock(clock));
FA fa277(.sum(s[120]),.carry(c[121]),.a(s[54]),.b(c[54]),.cin(s[67]), .clock(clock));
FA fa278(.sum(s[121]),.carry(c[122]),.a(s[55]),.b(c[55]),.cin(s[68]), .clock(clock));
FA fa279(.sum(s[122]),.carry(c[123]),.a(s[56]),.b(c[56]),.cin(s[69]), .clock(clock));
FA fa280(.sum(s[123]),.carry(c[124]),.a(s[57]),.b(c[57]),.cin(s[70]), .clock(clock));
FA fa281(.sum(s[124]),.carry(c[125]),.a(s[58]),.b(c[58]),.cin(s[71]), .clock(clock));
FA fa282(.sum(s[125]),.carry(c[126]),.a(s[59]),.b(c[59]),.cin(s[72]), .clock(clock));
FA fa283(.sum(s[126]),.carry(c[127]),.a(s[60]),.b(c[60]),.cin(s[73]), .clock(clock));
FA fa284(.sum(s[127]),.carry(c[128]),.a(s[61]),.b(c[61]),.cin(s[74]), .clock(clock));
FA fa285(.sum(s[128]),.carry(c[129]),.a(s[62]),.b(c[62]),.cin(s[75]), .clock(clock));
FA fa286(.sum(s[129]),.carry(c[130]),.a(s[63]),.b(c[63]),.cin(s[76]), .clock(clock));
FA fa287(.sum(s[130]),.carry(c[131]),.a(p[15][12]),.b(c[64]),.cin(s[77]), .clock(clock));


//end of step 2





HA ha15(.sum(s[131]), .carry(c[132]),.a(s[82]),.b(c[82]), .clock(clock));
HA ha16(.sum(s[132]), .carry(c[133]),.a(s[83]),.b(c[83]), .clock(clock));
FA fa88(.sum(s[133]), .carry(c[134]),.a(s[84]),.b(c[84]),.cin(c[17]), .clock(clock));
FA fa89(.sum(s[134]),.carry(c[135]),.a(s[85]),.b(c[85]),.cin(s[97]), .clock(clock));
FA fa90(.sum(s[135]),.carry(c[136]),.a(s[86]),.b(c[86]),.cin(s[98]), .clock(clock));
FA fa91(.sum(s[136]),.carry(c[137]),.a(s[87]),.b(c[87]),.cin(s[99]), .clock(clock));
FA fa92(.sum(s[137]),.carry(c[138]),.a(s[88]),.b(c[88]),.cin(s[100]), .clock(clock));
FA fa93(.sum(s[138]),.carry(c[139]),.a(s[89]),.b(c[89]),.cin(s[101]), .clock(clock));
FA fa94(.sum(s[139]),.carry(c[140]),.a(s[90]),.b(c[90]),.cin(s[102]), .clock(clock));
FA fa95(.sum(s[140]),.carry(c[141]),.a(s[91]),.b(c[91]),.cin(s[103]), .clock(clock));
FA fa96(.sum(s[141]),.carry(c[142]),.a(s[92]),.b(c[92]),.cin(s[104]), .clock(clock));
FA fa97(.sum(s[142]),.carry(c[143]),.a(s[93]),.b(c[93]),.cin(s[105]), .clock(clock));
FA fa98(.sum(s[143]),.carry(c[144]),.a(s[94]),.b(c[94]),.cin(s[106]), .clock(clock));
FA fa99(.sum(s[144]),.carry(c[145]),.a(s[95]),.b(c[95]),.cin(s[107]), .clock(clock));
FA fa100(.sum(s[145]),.carry(c[146]),.a(s[96]),.b(c[96]),.cin(s[108]), .clock(clock));
FA fa101(.sum(s[146]),.carry(c[147]),.a(s[30]),.b(c[97]),.cin(s[109]), .clock(clock));
HA ha17(.sum(s[147]),.carry(c[148]),.a(s[31]),.b(s[110]), .clock(clock));
HA ha18(.sum(s[148]),.carry(c[149]),.a(s[32]),.b(s[111]), .clock(clock));





HA ha19(.sum(s[149]), .carry(c[150]),.a(p[0][9]),.b(c[100]), .clock(clock));
HA ha20(.sum(s[150]), .carry(c[151]),.a(s[48]),.b(c[101]), .clock(clock));
HA ha21(.sum(s[151]), .carry(c[152]),.a(s[115]),.b(c[102]), .clock(clock));
FA fa102(.sum(s[152]),.carry(c[153]),.a(s[116]),.b(c[116]),.cin(c[103]), .clock(clock));
FA fa103(.sum(s[153]),.carry(c[154]),.a(s[117]),.b(c[117]),.cin(c[104]), .clock(clock));
FA fa104(.sum(s[154]),.carry(c[155]),.a(s[118]),.b(c[118]),.cin(c[105]), .clock(clock));
FA fa105(.sum(s[155]),.carry(c[156]),.a(s[119]),.b(c[119]),.cin(c[106]), .clock(clock));
FA fa106(.sum(s[156]),.carry(c[157]),.a(s[120]),.b(c[120]),.cin(c[107]), .clock(clock));
FA fa107(.sum(s[157]),.carry(c[158]),.a(s[121]),.b(c[121]),.cin(c[108]), .clock(clock));
FA fa108(.sum(s[158]),.carry(c[159]),.a(s[122]),.b(c[122]),.cin(c[109]), .clock(clock));
FA fa109(.sum(s[159]),.carry(c[160]),.a(s[123]),.b(c[123]),.cin(c[110]), .clock(clock));
FA fa110(.sum(s[160]),.carry(c[161]),.a(s[124]),.b(c[124]),.cin(c[111]), .clock(clock));
FA fa111(.sum(s[161]),.carry(c[162]),.a(s[125]),.b(c[125]),.cin(c[112]), .clock(clock));
FA fa112(.sum(s[162]),.carry(c[163]),.a(s[126]),.b(c[126]),.cin(c[113]), .clock(clock));
FA fa113(.sum(s[163]),.carry(c[164]),.a(s[127]),.b(c[127]),.cin(c[114]), .clock(clock));
FA fa114(.sum(s[164]),.carry(c[165]),.a(s[128]),.b(c[128]),.cin(c[115]), .clock(clock));
HA ha22(.sum(s[165]), .carry(c[166]),.a(s[129]),.b(c[129]), .clock(clock));
HA ha23(.sum(s[166]), .carry(c[167]),.a(s[130]),.b(c[130]), .clock(clock));
HA ha24(.sum(s[167]), .carry(c[168]),.a(s[78]),.b(c[131]), .clock(clock));



//end of step 3



HA ha25(.sum(s[168]), .carry(c[169]),.a(s[132]),.b(c[132]), .clock(clock));
HA ha26(.sum(s[169]), .carry(c[170]),.a(s[133]),.b(c[133]), .clock(clock));
HA ha27(.sum(s[170]), .carry(c[171]),.a(s[134]),.b(c[134]), .clock(clock));
FA fa115(.sum(s[171]),.carry(c[172]),.a(s[135]),.b(c[135]),.cin(c[98]), .clock(clock));
FA fa116(.sum(s[172]),.carry(c[173]),.a(s[136]),.b(c[136]),.cin(c[99]), .clock(clock));
FA fa117(.sum(s[173]),.carry(c[174]),.a(s[137]),.b(c[137]),.cin(s[149]), .clock(clock));
FA fa118(.sum(s[174]),.carry(c[175]),.a(s[138]),.b(c[138]),.cin(s[150]), .clock(clock));
FA fa119(.sum(s[175]),.carry(c[176]),.a(s[139]),.b(c[139]),.cin(s[151]), .clock(clock));
FA fa120(.sum(s[176]),.carry(c[177]),.a(s[140]),.b(c[140]),.cin(s[152]), .clock(clock));
FA fa121(.sum(s[177]),.carry(c[178]),.a(s[141]),.b(c[141]),.cin(s[153]), .clock(clock));
FA fa122(.sum(s[178]),.carry(c[179]),.a(s[142]),.b(c[142]),.cin(s[154]), .clock(clock));
FA fa123(.sum(s[179]),.carry(c[180]),.a(s[143]),.b(c[143]),.cin(s[155]), .clock(clock));
FA fa124(.sum(s[180]),.carry(c[181]),.a(s[144]),.b(c[144]),.cin(s[156]), .clock(clock));
FA fa125(.sum(s[181]),.carry(c[182]),.a(s[145]),.b(c[145]),.cin(s[157]), .clock(clock));
FA fa126(.sum(s[182]),.carry(c[183]),.a(s[146]),.b(c[146]),.cin(s[158]), .clock(clock));
FA fa127(.sum(s[183]),.carry(c[184]),.a(s[147]),.b(c[147]),.cin(s[159]), .clock(clock));
FA fa128(.sum(s[184]), .carry(c[185]),.a(s[148]),.b(c[148]),.cin(s[160]), .clock(clock));
FA fa129(.sum(s[185]), .carry(c[186]),.a(s[112]),.b(c[149]),.cin(s[161]), .clock(clock));
HA ha28(.sum(s[186]), .carry(c[187]),.a(s[113]),.b(s[162]), .clock(clock));
HA ha29(.sum(s[187]), .carry(c[188]),.a(s[114]),.b(s[163]), .clock(clock));




HA ha30(.sum(s[188]), .carry(c[189]),.a(c[154]),.b(c[64]), .clock(clock));
FA fa130(.sum(s[189]),.carry(c[190]),.a(s[155]),.b(c[65]),.cin(p[0][15]), .clock(clock));
FA fa131(.sum(s[190]),.carry(c[191]),.a(s[156]),.b(c[66]),.cin(p[1][15]), .clock(clock));
FA fa132(.sum(s[191]),.carry(c[192]),.a(s[157]),.b(c[67]),.cin(p[2][15]), .clock(clock));
FA fa133(.sum(s[192]),.carry(c[193]),.a(s[158]),.b(c[68]),.cin(p[3][15]), .clock(clock));
FA fa134(.sum(s[193]),.carry(c[194]),.a(s[159]),.b(c[69]),.cin(p[4][15]), .clock(clock));
FA fa135(.sum(s[194]),.carry(c[195]),.a(s[160]),.b(c[70]),.cin(p[5][15]), .clock(clock));
FA fa136(.sum(s[195]),.carry(c[196]),.a(s[161]),.b(c[71]),.cin(p[6][15]), .clock(clock));
FA fa137(.sum(s[196]),.carry(c[197]),.a(s[162]),.b(c[72]),.cin(p[7][15]), .clock(clock));
FA fa138(.sum(s[197]),.carry(c[198]),.a(s[163]),.b(c[73]),.cin(p[8][15]), .clock(clock));
FA fa139(.sum(s[198]),.carry(c[199]),.a(s[164]),.b(c[74]),.cin(p[9][15]), .clock(clock));
FA fa140(.sum(s[199]),.carry(c[200]),.a(s[165]),.b(c[75]),.cin(p[10][15]), .clock(clock));
FA fa141(.sum(s[200]),.carry(c[201]),.a(s[166]),.b(c[76]),.cin(p[11][15]), .clock(clock));
FA fa142(.sum(s[201]),.carry(c[202]),.a(s[167]),.b(c[77]),.cin(p[12][15]), .clock(clock));
FA fa143(.sum(s[202]),.carry(c[203]),.a(s[168]),.b(c[78]),.cin(p[13][15]), .clock(clock));
HA ha31(.sum(s[203]), .carry(c[204]),.a(c[79]),.b(p[14][15]), .clock(clock));



// end of step 4






HA ha32(.sum(s[204]), .carry(c[205]),.a(s[169]),.b(c[169]), .clock(clock));
HA ha33(.sum(s[205]), .carry(c[206]),.a(s[170]),.b(c[170]), .clock(clock));
HA ha34(.sum(s[206]), .carry(c[207]),.a(s[171]),.b(c[171]), .clock(clock));
HA ha35(.sum(s[207]), .carry(c[208]),.a(s[172]),.b(c[172]), .clock(clock));
HA ha36(.sum(s[208]), .carry(c[209]),.a(s[173]),.b(c[173]), .clock(clock));
FA fa144(.sum(s[209]),.carry(c[210]),.a(s[174]),.b(c[174]),.cin(c[149]), .clock(clock));
FA fa145(.sum(s[210]),.carry(c[211]),.a(s[175]),.b(c[175]),.cin(c[150]), .clock(clock));
FA fa146(.sum(s[211]),.carry(c[212]),.a(s[176]),.b(c[176]),.cin(c[151]), .clock(clock));
FA fa147(.sum(s[212]),.carry(c[213]),.a(s[177]),.b(c[177]),.cin(c[152]), .clock(clock));
FA fa148(.sum(s[213]),.carry(c[214]),.a(s[178]),.b(c[178]),.cin(c[188]), .clock(clock));
FA fa149(.sum(s[214]),.carry(c[215]),.a(s[179]),.b(c[179]),.cin(s[189]), .clock(clock));
FA fa150(.sum(s[215]),.carry(c[216]),.a(s[180]),.b(c[180]),.cin(s[190]), .clock(clock));
FA fa151(.sum(s[216]),.carry(c[217]),.a(s[181]),.b(c[181]),.cin(s[191]), .clock(clock));
FA fa152(.sum(s[217]),.carry(c[218]),.a(s[182]),.b(c[182]),.cin(s[192]), .clock(clock));
FA fa153(.sum(s[218]),.carry(c[219]),.a(s[183]),.b(c[183]),.cin(s[193]), .clock(clock));
FA fa154(.sum(s[219]),.carry(c[220]),.a(s[184]),.b(c[184]),.cin(s[194]), .clock(clock));
FA fa155(.sum(s[220]),.carry(c[221]),.a(s[185]),.b(c[185]),.cin(s[195]), .clock(clock));
FA fa156(.sum(s[221]),.carry(c[222]),.a(s[186]),.b(c[186]),.cin(s[196]), .clock(clock));
FA fa158(.sum(s[222]),.carry(c[223]),.a(s[187]),.b(c[187]),.cin(s[197]), .clock(clock));
FA fa159(.sum(s[223]),.carry(c[224]),.a(s[164]),.b(c[188]),.cin(s[198]), .clock(clock));
HA ha37(.sum(s[224]), .carry(c[225]),.a(s[165]),.b(s[199]), .clock(clock));
HA ha38(.sum(s[225]), .carry(c[226]),.a(s[166]),.b(s[200]), .clock(clock));
HA ha39(.sum(s[226]), .carry(c[227]),.a(s[167]),.b(s[201]), .clock(clock));
HA ha40(.sum(s[227]), .carry(c[228]),.a(s[168]),.b(s[202]), .clock(clock));
HA ha41(.sum(s[228]), .carry(c[229]),.a(s[169]),.b(s[203]), .clock(clock));

// end of step 5




HA ha42(.sum(s[229]), .carry(c[230]),.a(s[205]),.b(c[205]), .clock(clock));
HA ha43(.sum(s[230]), .carry(c[231]),.a(s[206]),.b(c[206]), .clock(clock));
HA ha44(.sum(s[231]), .carry(c[232]),.a(s[207]),.b(c[207]), .clock(clock));
HA ha45(.sum(s[232]), .carry(c[233]),.a(s[208]),.b(c[208]), .clock(clock));
HA ha46(.sum(s[233]), .carry(c[234]),.a(s[209]),.b(c[209]), .clock(clock));
HA ha47(.sum(s[234]), .carry(c[235]),.a(s[210]),.b(c[210]), .clock(clock));
HA ha48(.sum(s[235]), .carry(c[236]),.a(s[211]),.b(c[211]), .clock(clock));
HA ha49(.sum(s[236]), .carry(c[237]),.a(s[212]),.b(c[212]), .clock(clock));
HA ha50(.sum(s[237]), .carry(c[238]),.a(s[213]),.b(c[213]), .clock(clock));
FA fa160(.sum(s[238]),.carry(c[239]),.a(s[214]),.b(c[214]),.cin(c[189]), .clock(clock));
FA fa161(.sum(s[239]),.carry(c[240]),.a(s[215]),.b(c[215]),.cin(c[190]), .clock(clock));
FA fa162(.sum(s[240]),.carry(c[241]),.a(s[216]),.b(c[216]),.cin(c[191]), .clock(clock));
FA fa163(.sum(s[241]),.carry(c[242]),.a(s[217]),.b(c[217]),.cin(c[192]), .clock(clock));
FA fa164(.sum(s[242]),.carry(c[243]),.a(s[218]),.b(c[218]),.cin(c[193]), .clock(clock));
FA fa165(.sum(s[243]),.carry(c[244]),.a(s[219]),.b(c[219]),.cin(c[194]), .clock(clock));
FA fa166(.sum(s[244]),.carry(c[245]),.a(s[220]),.b(c[220]),.cin(c[195]), .clock(clock));
FA fa167(.sum(s[245]),.carry(c[246]),.a(s[221]),.b(c[221]),.cin(c[196]), .clock(clock));
FA fa168(.sum(s[246]),.carry(c[247]),.a(s[222]),.b(c[222]),.cin(c[197]), .clock(clock));
FA fa169(.sum(s[247]),.carry(c[248]),.a(s[223]),.b(c[223]),.cin(c[198]), .clock(clock));
FA fa170(.sum(s[248]),.carry(c[249]),.a(s[224]),.b(c[224]),.cin(c[199]), .clock(clock));
FA fa171(.sum(s[249]),.carry(c[250]),.a(s[225]),.b(c[225]),.cin(c[200]), .clock(clock));
FA fa172(.sum(s[250]),.carry(c[251]),.a(s[226]),.b(c[226]),.cin(c[201]), .clock(clock));
FA fa173(.sum(s[251]),.carry(c[252]),.a(s[227]),.b(c[227]),.cin(c[202]), .clock(clock));
FA fa174(.sum(s[252]),.carry(c[253]),.a(s[228]),.b(c[228]),.cin(c[203]), .clock(clock));
FA fa175(.sum(s[253]),.carry(c[254]),.a(p[15][15]),.b(c[229]),.cin(c[204]), .clock(clock));


//end of step 6
assign a=s[253:230];
assign b=c[253:230];

CLA_24bmod add1(a,b,sum,c1);

/*

HA ha51(.sum(s[254]), .carry(c[255]),.a(s[230]),.b(c[230]), .clock(clock));
FA fa521(.sum(s[255]), .carry(c[256]),.a(s[231]),.b(c[231]),.cin(c[255]), .clock(clock));
FA fa531(.sum(s[256]), .carry(c[257]),.a(s[232]),.b(c[232]),.cin(c[256]), .clock(clock));
FA fa541(.sum(s[257]), .carry(c[258]),.a(s[233]),.b(c[233]),.cin(c[257]), .clock(clock));
FA fa551(.sum(s[258]), .carry(c[259]),.a(s[234]),.b(c[234]),.cin(c[258]), .clock(clock));
FA fa561(.sum(s[259]), .carry(c[260]),.a(s[235]),.b(c[235]),.cin(c[259]), .clock(clock));
FA fa571(.sum(s[260]), .carry(c[261]),.a(s[236]),.b(c[236]),.cin(c[260]), .clock(clock));
FA fa581(.sum(s[261]), .carry(c[262]),.a(s[237]),.b(c[237]),.cin(c[261]), .clock(clock));
FA fa591(.sum(s[262]), .carry(c[263]),.a(s[238]),.b(c[238]),.cin(c[262]), .clock(clock));
FA fa601(.sum(s[263]), .carry(c[264]),.a(s[239]),.b(c[239]),.cin(c[263]), .clock(clock));
FA fa611(.sum(s[264]), .carry(c[265]),.a(s[240]),.b(c[240]),.cin(c[264]), .clock(clock));
FA fa621(.sum(s[265]), .carry(c[266]),.a(s[241]),.b(c[241]),.cin(c[265]), .clock(clock));
FA fa631(.sum(s[266]), .carry(c[267]),.a(s[242]),.b(c[242]),.cin(c[266]), .clock(clock));
FA fa641(.sum(s[267]), .carry(c[268]),.a(s[243]),.b(c[243]),.cin(c[267]), .clock(clock));
FA fa651(.sum(s[268]), .carry(c[269]),.a(s[244]),.b(c[244]),.cin(c[268]), .clock(clock));
FA fa661(.sum(s[269]), .carry(c[270]),.a(s[245]),.b(c[245]),.cin(c[269]), .clock(clock));
FA fa671(.sum(s[270]), .carry(c[271]),.a(s[246]),.b(c[246]),.cin(c[270]), .clock(clock));
FA fa681(.sum(s[271]), .carry(c[272]),.a(s[247]),.b(c[247]),.cin(c[271]), .clock(clock));
FA fa691(.sum(s[272]), .carry(c[273]),.a(s[248]),.b(c[248]),.cin(c[272]), .clock(clock));
FA fa701(.sum(s[273]), .carry(c[274]),.a(s[249]),.b(c[249]),.cin(c[273]), .clock(clock));
FA fa711(.sum(s[274]), .carry(c[275]),.a(s[250]),.b(c[250]),.cin(c[274]), .clock(clock));
FA fa721(.sum(s[275]), .carry(c[276]),.a(s[251]),.b(c[251]),.cin(c[275]), .clock(clock));
FA fa731(.sum(s[276]), .carry(c[277]),.a(s[252]),.b(c[252]),.cin(c[276]), .clock(clock));
FA fa741(.sum(s[277]), .carry(c[278]),.a(s[253]),.b(c[253]),.cin(c[277]), .clock(clock));
*/


//end of step 7



//always @(posedge clock)

assign product={sum,s[229],s[204],s[168],s[131],s[81],s[0],p[0][15]};

endmodule
