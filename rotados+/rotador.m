clc
close all
for n=-30:2.5:10
copyfile ("4415.geo", ["r",num2str(n),".geo"]);
filename = ["r",num2str(n),".geo"];
fid = fopen (["r",num2str(n),".geo"], "a");
i=n*pi/180;
fprintf (fid, "Rotate {{0, 0, 1}, {0.075, 0, 0}, %f} {Surface{450, 494, 490, 486, 482, 478, 474, 470, 466, 462, 458, 454, 498, 446, 442, 438, 434, 430, 426, 422, 418, 414, 410, 406, 546, 590, 586, 582, 578, 574, 570, 566, 562, 558, 554, 550, 402, 542, 538, 534, 530, 526, 522, 518, 514, 510, 506, 502, 258, 302, 298, 294, 290, 286, 282, 278, 274, 270, 266, 262, 306, 254, 250, 246, 242, 238, 234, 230, 226, 222, 218, 214, 354, 398, 394, 390, 386, 382, 378, 374, 370, 366, 362, 358, 210, 350, 346, 342, 338, 334, 330, 326, 322, 318, 314, 310};}",i);
fclose (fid);
endfor
