//
//  LPZStatePolygon.m
//  License Plate Zone
//  https://itunes.apple.com/us/app/license-plate-zone/id509842366
//
//  Copyright (c) 2012 KJH Software LLC. All rights reserved.
//  If downloaded from https://github.com/kjhsoftware/us-state-polygons,
//  available under The MIT License (MIT).
//

#import "LPZStatePolygons.h"

@implementation LPZStatePolygons

- (MKPolygon *)polygonForState:(NSString *)state
{
    static NSMutableDictionary *polygons;
    if (!polygons) {
        polygons = [[NSMutableDictionary alloc] init];
    }
    
    MKPolygon *polygon = nil;
    
    NSString *selectorName = [NSString stringWithFormat:@"polygonFor%@", [state stringByReplacingOccurrencesOfString:@" " withString:@"_"]];
    SEL polySelector = NSSelectorFromString(selectorName);
    
    if ([self respondsToSelector:polySelector]) {
        
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        polygon = [self performSelector:polySelector];
#pragma clang diagnostic pop        
        
        polygon.title = state;
        [polygons setValue:polygon forKey:state];
    }
    
    return polygon;
}

//
// code below generated from states.xml
//



- (MKPolygon *)polygonForAlaska
{
    CLLocationCoordinate2D points[86];
    
    points[0] = CLLocationCoordinate2DMake(70.0187, -141.0205);
    points[1] = CLLocationCoordinate2DMake(70.1292, -141.7291);
    points[2] = CLLocationCoordinate2DMake(70.4515, -144.8163);
    points[3] = CLLocationCoordinate2DMake(70.7471, -148.4583);
    points[4] = CLLocationCoordinate2DMake(70.7923, -151.1609);
    points[5] = CLLocationCoordinate2DMake(71.1470, -152.6221);
    points[6] = CLLocationCoordinate2DMake(71.1185, -153.9954);
    points[7] = CLLocationCoordinate2DMake(71.4307, -154.8853);
    points[8] = CLLocationCoordinate2DMake(71.5232, -156.7529);
    points[9] = CLLocationCoordinate2DMake(71.2796, -157.9449);
    points[10] = CLLocationCoordinate2DMake(71.2249, -159.6313);
    points[11] = CLLocationCoordinate2DMake(70.6363, -161.8671);
    points[12] = CLLocationCoordinate2DMake(70.0843, -163.5809);
    points[13] = CLLocationCoordinate2DMake(69.3028, -165.2399);
    points[14] = CLLocationCoordinate2DMake(69.1782, -166.8768);
    points[15] = CLLocationCoordinate2DMake(68.3344, -168.0414);
    points[16] = CLLocationCoordinate2DMake(67.6844, -165.9155);
    points[17] = CLLocationCoordinate2DMake(67.2933, -164.6082);
    points[18] = CLLocationCoordinate2DMake(66.7789, -164.0149);
    points[19] = CLLocationCoordinate2DMake(66.5810, -165.7507);
    points[20] = CLLocationCoordinate2DMake(66.2867, -167.5745);
    points[21] = CLLocationCoordinate2DMake(66.0269, -168.9862);
    points[22] = CLLocationCoordinate2DMake(65.4970, -168.9478);
    points[23] = CLLocationCoordinate2DMake(65.0420, -167.4756);
    points[24] = CLLocationCoordinate2DMake(64.3922, -167.0142);
    points[25] = CLLocationCoordinate2DMake(64.0554, -165.7343);
    points[26] = CLLocationCoordinate2DMake(64.0193, -163.2294);
    points[27] = CLLocationCoordinate2DMake(63.9615, -162.1143);
    points[28] = CLLocationCoordinate2DMake(63.6877, -163.6029);
    points[29] = CLLocationCoordinate2DMake(63.4530, -165.3717);
    points[30] = CLLocationCoordinate2DMake(62.4133, -166.3715);
    points[31] = CLLocationCoordinate2DMake(61.6534, -166.9867);
    points[32] = CLLocationCoordinate2DMake(60.8556, -166.4429);
    points[33] = CLLocationCoordinate2DMake(60.5357, -167.8381);
    points[34] = CLLocationCoordinate2DMake(59.5482, -167.7118);
    points[35] = CLLocationCoordinate2DMake(59.4115, -165.8002);
    points[36] = CLLocationCoordinate2DMake(59.3696, -164.5972);
    points[37] = CLLocationCoordinate2DMake(59.1168, -162.8558);
    points[38] = CLLocationCoordinate2DMake(58.1185, -162.5427);
    points[39] = CLLocationCoordinate2DMake(58.1359, -160.6421);
    points[40] = CLLocationCoordinate2DMake(58.0285, -159.5050);
    points[41] = CLLocationCoordinate2DMake(57.6336, -158.8953);
    points[42] = CLLocationCoordinate2DMake(56.9090, -159.9060);
    points[43] = CLLocationCoordinate2DMake(56.3926, -160.6531);
    points[44] = CLLocationCoordinate2DMake(56.2342, -161.8835);
    points[45] = CLLocationCoordinate2DMake(55.7240, -162.9822);
    points[46] = CLLocationCoordinate2DMake(55.2478, -164.3994);
    points[47] = CLLocationCoordinate2DMake(54.7753, -165.3168);
    points[48] = CLLocationCoordinate2DMake(54.1463, -167.1075);
    points[49] = CLLocationCoordinate2DMake(53.5632, -168.5852);
    points[50] = CLLocationCoordinate2DMake(53.1402, -169.9146);
    points[51] = CLLocationCoordinate2DMake(52.5964, -169.5959);
    points[52] = CLLocationCoordinate2DMake(52.9089, -168.2227);
    points[53] = CLLocationCoordinate2DMake(54.2139, -162.7734);
    points[54] = CLLocationCoordinate2DMake(54.6786, -159.1452);
    points[55] = CLLocationCoordinate2DMake(55.6567, -155.4634);
    points[56] = CLLocationCoordinate2DMake(57.3510, -152.1400);
    points[57] = CLLocationCoordinate2DMake(59.2209, -150.8203);
    points[58] = CLLocationCoordinate2DMake(59.7695, -147.4461);
    points[59] = CLLocationCoordinate2DMake(60.3521, -145.9850);
    points[60] = CLLocationCoordinate2DMake(59.8917, -144.1544);
    points[61] = CLLocationCoordinate2DMake(59.8172, -141.6811);
    points[62] = CLLocationCoordinate2DMake(59.5225, -140.5124);
    points[63] = CLLocationCoordinate2DMake(59.0292, -138.8548);
    points[64] = CLLocationCoordinate2DMake(57.9032, -136.8526);
    points[65] = CLLocationCoordinate2DMake(56.9157, -136.0725);
    points[66] = CLLocationCoordinate2DMake(56.1555, -134.9794);
    points[67] = CLLocationCoordinate2DMake(55.3237, -134.0057);
    points[68] = CLLocationCoordinate2DMake(54.6341, -133.6418);
    points[69] = CLLocationCoordinate2DMake(54.7135, -130.6261);
    points[70] = CLLocationCoordinate2DMake(55.2869, -129.9930);
    points[71] = CLLocationCoordinate2DMake(55.9869, -130.0108);
    points[72] = CLLocationCoordinate2DMake(56.1057, -130.1083);
    points[73] = CLLocationCoordinate2DMake(56.6086, -131.5887);
    points[74] = CLLocationCoordinate2DMake(57.8404, -132.8755);
    points[75] = CLLocationCoordinate2DMake(58.7276, -133.8423);
    points[76] = CLLocationCoordinate2DMake(59.3108, -134.9121);
    points[77] = CLLocationCoordinate2DMake(59.8020, -135.4724);
    points[78] = CLLocationCoordinate2DMake(59.6039, -136.3445);
    points[79] = CLLocationCoordinate2DMake(59.1619, -136.8251);
    points[80] = CLLocationCoordinate2DMake(59.2441, -137.6079);
    points[81] = CLLocationCoordinate2DMake(60.0902, -139.2119);
    points[82] = CLLocationCoordinate2DMake(60.3575, -139.0938);
    points[83] = CLLocationCoordinate2DMake(60.1866, -140.0056);
    points[84] = CLLocationCoordinate2DMake(60.3059, -140.9999);
    points[85] = CLLocationCoordinate2DMake(70.0187, -141.0205);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:86];
    
    return poly;
}


- (MKPolygon *)polygonForAlabama
{
    CLLocationCoordinate2D points[24];
    
    points[0] = CLLocationCoordinate2DMake(35.0078, -88.2024);
    points[1] = CLLocationCoordinate2DMake(34.9844, -85.6044);
    points[2] = CLLocationCoordinate2DMake(32.8404, -85.1756);
    points[3] = CLLocationCoordinate2DMake(32.2593, -84.8927);
    points[4] = CLLocationCoordinate2DMake(32.1535, -85.0342);
    points[5] = CLLocationCoordinate2DMake(31.7947, -85.1358);
    points[6] = CLLocationCoordinate2DMake(31.5200, -85.0438);
    points[7] = CLLocationCoordinate2DMake(31.3384, -85.0836);
    points[8] = CLLocationCoordinate2DMake(31.1946, -85.1077);
    points[9] = CLLocationCoordinate2DMake(31.1079, -85.0349);
    points[10] = CLLocationCoordinate2DMake(31.0003, -85.0012);
    points[11] = CLLocationCoordinate2DMake(30.9964, -87.5978);
    points[12] = CLLocationCoordinate2DMake(30.9647, -87.5875);
    points[13] = CLLocationCoordinate2DMake(30.8651, -87.6342);
    points[14] = CLLocationCoordinate2DMake(30.6438, -87.3945);
    points[15] = CLLocationCoordinate2DMake(30.5067, -87.4433);
    points[16] = CLLocationCoordinate2DMake(30.4362, -87.3664);
    points[17] = CLLocationCoordinate2DMake(30.2828, -87.5178);
    points[18] = CLLocationCoordinate2DMake(30.1493, -87.5164);
    points[19] = CLLocationCoordinate2DMake(30.1546, -88.3864);
    points[20] = CLLocationCoordinate2DMake(31.8939, -88.4743);
    points[21] = CLLocationCoordinate2DMake(34.8938, -88.1021);
    points[22] = CLLocationCoordinate2DMake(34.9107, -88.1461);
    points[23] = CLLocationCoordinate2DMake(34.9955, -88.1998);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:24];
    
    return poly;
}


- (MKPolygon *)polygonForArkansas
{
    CLLocationCoordinate2D points[64];
    
    points[0] = CLLocationCoordinate2DMake(33.0225, -94.0416);
    points[1] = CLLocationCoordinate2DMake(33.0036, -91.1659);
    points[2] = CLLocationCoordinate2DMake(33.1192, -91.2016);
    points[3] = CLLocationCoordinate2DMake(33.1835, -91.1041);
    points[4] = CLLocationCoordinate2DMake(33.3397, -91.1536);
    points[5] = CLLocationCoordinate2DMake(33.4223, -91.1646);
    points[6] = CLLocationCoordinate2DMake(33.4337, -91.2291);
    points[7] = CLLocationCoordinate2DMake(33.5414, -91.2524);
    points[8] = CLLocationCoordinate2DMake(33.6135, -91.1838);
    points[9] = CLLocationCoordinate2DMake(33.6878, -91.2524);
    points[10] = CLLocationCoordinate2DMake(33.6969, -91.1261);
    points[11] = CLLocationCoordinate2DMake(33.7883, -91.1426);
    points[12] = CLLocationCoordinate2DMake(33.7700, -91.0437);
    points[13] = CLLocationCoordinate2DMake(33.8339, -91.0327);
    points[14] = CLLocationCoordinate2DMake(33.8795, -91.0657);
    points[15] = CLLocationCoordinate2DMake(33.9434, -91.0876);
    points[16] = CLLocationCoordinate2DMake(33.9889, -90.9998);
    points[17] = CLLocationCoordinate2DMake(34.0253, -90.9229);
    points[18] = CLLocationCoordinate2DMake(34.0891, -90.9009);
    points[19] = CLLocationCoordinate2DMake(34.1345, -90.9668);
    points[20] = CLLocationCoordinate2DMake(34.1709, -90.9119);
    points[21] = CLLocationCoordinate2DMake(34.1345, -90.8501);
    points[22] = CLLocationCoordinate2DMake(34.2277, -90.9338);
    points[23] = CLLocationCoordinate2DMake(34.2833, -90.8267);
    points[24] = CLLocationCoordinate2DMake(34.3434, -90.6921);
    points[25] = CLLocationCoordinate2DMake(34.3774, -90.6509);
    points[26] = CLLocationCoordinate2DMake(34.3978, -90.6152);
    points[27] = CLLocationCoordinate2DMake(34.4432, -90.5589);
    points[28] = CLLocationCoordinate2DMake(34.5179, -90.5740);
    points[29] = CLLocationCoordinate2DMake(34.5880, -90.5823);
    points[30] = CLLocationCoordinate2DMake(34.7506, -90.5356);
    points[31] = CLLocationCoordinate2DMake(34.7913, -90.5136);
    points[32] = CLLocationCoordinate2DMake(34.8780, -90.4532);
    points[33] = CLLocationCoordinate2DMake(34.9329, -90.2441);
    points[34] = CLLocationCoordinate2DMake(34.8702, -90.2911);
    points[35] = CLLocationCoordinate2DMake(34.9955, -90.3090);
    points[36] = CLLocationCoordinate2DMake(35.0404, -90.2953);
    points[37] = CLLocationCoordinate2DMake(35.0280, -90.2067);
    points[38] = CLLocationCoordinate2DMake(35.1354, -90.1421);
    points[39] = CLLocationCoordinate2DMake(35.1985, -90.1112);
    points[40] = CLLocationCoordinate2DMake(35.2849, -90.1524);
    points[41] = CLLocationCoordinate2DMake(35.4372, -90.1346);
    points[42] = CLLocationCoordinate2DMake(35.5568, -90.0192);
    points[43] = CLLocationCoordinate2DMake(35.7343, -89.9547);
    points[44] = CLLocationCoordinate2DMake(35.8579, -89.7638);
    points[45] = CLLocationCoordinate2DMake(35.9180, -89.6635);
    points[46] = CLLocationCoordinate2DMake(35.9658, -89.6883);
    points[47] = CLLocationCoordinate2DMake(36.0013, -89.7130);
    points[48] = CLLocationCoordinate2DMake(35.9958, -90.3735);
    points[49] = CLLocationCoordinate2DMake(36.1268, -90.2664);
    points[50] = CLLocationCoordinate2DMake(36.2875, -90.0934);
    points[51] = CLLocationCoordinate2DMake(36.3892, -90.0742);
    points[52] = CLLocationCoordinate2DMake(36.4180, -90.1511);
    points[53] = CLLocationCoordinate2DMake(36.4997, -90.1566);
    points[54] = CLLocationCoordinate2DMake(36.4994, -94.6179);
    points[55] = CLLocationCoordinate2DMake(35.3920, -94.4302);
    points[56] = CLLocationCoordinate2DMake(33.6386, -94.4852);
    points[57] = CLLocationCoordinate2DMake(33.6421, -94.4522);
    points[58] = CLLocationCoordinate2DMake(33.5597, -94.4000);
    points[59] = CLLocationCoordinate2DMake(33.5883, -94.2462);
    points[60] = CLLocationCoordinate2DMake(33.5872, -94.1885);
    points[61] = CLLocationCoordinate2DMake(33.5345, -94.0375);
    points[62] = CLLocationCoordinate2DMake(33.4314, -94.0430);
    points[63] = CLLocationCoordinate2DMake(33.0213, -94.0430);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:64];
    
    return poly;
}


- (MKPolygon *)polygonForArizona
{
    CLLocationCoordinate2D points[118];
    
    points[0] = CLLocationCoordinate2DMake(36.9993, -112.5989);
    points[1] = CLLocationCoordinate2DMake(37.0004, -110.8630);
    points[2] = CLLocationCoordinate2DMake(36.9991, -109.0451);
    points[3] = CLLocationCoordinate2DMake(31.3325, -109.0503);
    points[4] = CLLocationCoordinate2DMake(31.3325, -111.0718);
    points[5] = CLLocationCoordinate2DMake(32.4935, -114.8126);
    points[6] = CLLocationCoordinate2DMake(32.5184, -114.8099);
    points[7] = CLLocationCoordinate2DMake(32.5827, -114.8044);
    points[8] = CLLocationCoordinate2DMake(32.6246, -114.7992);
    points[9] = CLLocationCoordinate2DMake(32.6700, -114.7474);
    points[10] = CLLocationCoordinate2DMake(32.7191, -114.7220);
    points[11] = CLLocationCoordinate2DMake(32.7480, -114.6986);
    points[12] = CLLocationCoordinate2DMake(32.7353, -114.6162);
    points[13] = CLLocationCoordinate2DMake(32.7503, -114.5641);
    points[14] = CLLocationCoordinate2DMake(32.7573, -114.5284);
    points[15] = CLLocationCoordinate2DMake(32.7850, -114.5311);
    points[16] = CLLocationCoordinate2DMake(32.8161, -114.5091);
    points[17] = CLLocationCoordinate2DMake(32.8427, -114.4679);
    points[18] = CLLocationCoordinate2DMake(32.9372, -114.4844);
    points[19] = CLLocationCoordinate2DMake(32.9764, -114.4775);
    points[20] = CLLocationCoordinate2DMake(32.9718, -114.4913);
    points[21] = CLLocationCoordinate2DMake(33.0328, -114.5174);
    points[22] = CLLocationCoordinate2DMake(33.0351, -114.5750);
    points[23] = CLLocationCoordinate2DMake(33.0282, -114.5888);
    points[24] = CLLocationCoordinate2DMake(33.0305, -114.6286);
    points[25] = CLLocationCoordinate2DMake(33.0501, -114.6451);
    points[26] = CLLocationCoordinate2DMake(33.0328, -114.6629);
    points[27] = CLLocationCoordinate2DMake(33.0858, -114.6918);
    points[28] = CLLocationCoordinate2DMake(33.0904, -114.7083);
    points[29] = CLLocationCoordinate2DMake(33.1720, -114.6794);
    points[30] = CLLocationCoordinate2DMake(33.2467, -114.6904);
    points[31] = CLLocationCoordinate2DMake(33.2582, -114.6698);
    points[32] = CLLocationCoordinate2DMake(33.2754, -114.6808);
    points[33] = CLLocationCoordinate2DMake(33.2858, -114.7206);
    points[34] = CLLocationCoordinate2DMake(33.3041, -114.7302);
    points[35] = CLLocationCoordinate2DMake(33.3546, -114.6973);
    points[36] = CLLocationCoordinate2DMake(33.4039, -114.7055);
    points[37] = CLLocationCoordinate2DMake(33.4142, -114.6506);
    points[38] = CLLocationCoordinate2DMake(33.4418, -114.6245);
    points[39] = CLLocationCoordinate2DMake(33.5070, -114.5778);
    points[40] = CLLocationCoordinate2DMake(33.5311, -114.5586);
    points[41] = CLLocationCoordinate2DMake(33.5528, -114.5242);
    points[42] = CLLocationCoordinate2DMake(33.5895, -114.5393);
    points[43] = CLLocationCoordinate2DMake(33.6363, -114.5242);
    points[44] = CLLocationCoordinate2DMake(33.6832, -114.5284);
    points[45] = CLLocationCoordinate2DMake(33.7083, -114.4940);
    points[46] = CLLocationCoordinate2DMake(33.7597, -114.5050);
    points[47] = CLLocationCoordinate2DMake(33.8248, -114.5215);
    points[48] = CLLocationCoordinate2DMake(33.8613, -114.5256);
    points[49] = CLLocationCoordinate2DMake(33.9058, -114.5091);
    points[50] = CLLocationCoordinate2DMake(33.9308, -114.5366);
    points[51] = CLLocationCoordinate2DMake(33.9582, -114.5119);
    points[52] = CLLocationCoordinate2DMake(34.0117, -114.4652);
    points[53] = CLLocationCoordinate2DMake(34.0276, -114.4336);
    points[54] = CLLocationCoordinate2DMake(34.0856, -114.4363);
    points[55] = CLLocationCoordinate2DMake(34.1118, -114.4089);
    points[56] = CLLocationCoordinate2DMake(34.1186, -114.3622);
    points[57] = CLLocationCoordinate2DMake(34.1368, -114.3237);
    points[58] = CLLocationCoordinate2DMake(34.1720, -114.2908);
    points[59] = CLLocationCoordinate2DMake(34.1914, -114.2221);
    points[60] = CLLocationCoordinate2DMake(34.2044, -114.2249);
    points[61] = CLLocationCoordinate2DMake(34.2595, -114.1651);
    points[62] = CLLocationCoordinate2DMake(34.2561, -114.1315);
    points[63] = CLLocationCoordinate2DMake(34.3049, -114.1383);
    points[64] = CLLocationCoordinate2DMake(34.3559, -114.1864);
    points[65] = CLLocationCoordinate2DMake(34.4024, -114.2674);
    points[66] = CLLocationCoordinate2DMake(34.4375, -114.3031);
    points[67] = CLLocationCoordinate2DMake(34.4500, -114.3361);
    points[68] = CLLocationCoordinate2DMake(34.4601, -114.3869);
    points[69] = CLLocationCoordinate2DMake(34.5235, -114.3787);
    points[70] = CLLocationCoordinate2DMake(34.5869, -114.4322);
    points[71] = CLLocationCoordinate2DMake(34.6581, -114.4597);
    points[72] = CLLocationCoordinate2DMake(34.6648, -114.4501);
    points[73] = CLLocationCoordinate2DMake(34.7269, -114.4968);
    points[74] = CLLocationCoordinate2DMake(34.7890, -114.5682);
    points[75] = CLLocationCoordinate2DMake(34.8454, -114.5970);
    points[76] = CLLocationCoordinate2DMake(34.8758, -114.6382);
    points[77] = CLLocationCoordinate2DMake(34.9107, -114.6286);
    points[78] = CLLocationCoordinate2DMake(34.9659, -114.6382);
    points[79] = CLLocationCoordinate2DMake(35.0019, -114.6336);
    points[80] = CLLocationCoordinate2DMake(35.0480, -114.6259);
    points[81] = CLLocationCoordinate2DMake(35.0750, -114.6039);
    points[82] = CLLocationCoordinate2DMake(35.0929, -114.6368);
    points[83] = CLLocationCoordinate2DMake(35.1109, -114.6368);
    points[84] = CLLocationCoordinate2DMake(35.1199, -114.6094);
    points[85] = CLLocationCoordinate2DMake(35.1783, -114.5737);
    points[86] = CLLocationCoordinate2DMake(35.3218, -114.5929);
    points[87] = CLLocationCoordinate2DMake(35.4070, -114.6149);
    points[88] = CLLocationCoordinate2DMake(35.5054, -114.6863);
    points[89] = CLLocationCoordinate2DMake(35.5233, -114.6533);
    points[90] = CLLocationCoordinate2DMake(35.5814, -114.6863);
    points[91] = CLLocationCoordinate2DMake(35.6037, -114.6478);
    points[92] = CLLocationCoordinate2DMake(35.6618, -114.6973);
    points[93] = CLLocationCoordinate2DMake(35.8089, -114.7192);
    points[94] = CLLocationCoordinate2DMake(35.8267, -114.6973);
    points[95] = CLLocationCoordinate2DMake(35.8579, -114.7083);
    points[96] = CLLocationCoordinate2DMake(35.8757, -114.6588);
    points[97] = CLLocationCoordinate2DMake(35.8980, -114.7028);
    points[98] = CLLocationCoordinate2DMake(35.9691, -114.7412);
    points[99] = CLLocationCoordinate2DMake(36.0447, -114.7522);
    points[100] = CLLocationCoordinate2DMake(36.0580, -114.7357);
    points[101] = CLLocationCoordinate2DMake(36.0979, -114.7742);
    points[102] = CLLocationCoordinate2DMake(36.1157, -114.6863);
    points[103] = CLLocationCoordinate2DMake(36.1334, -114.6204);
    points[104] = CLLocationCoordinate2DMake(36.1556, -114.5654);
    points[105] = CLLocationCoordinate2DMake(36.1467, -114.5215);
    points[106] = CLLocationCoordinate2DMake(36.1290, -114.5105);
    points[107] = CLLocationCoordinate2DMake(36.1434, -114.3896);
    points[108] = CLLocationCoordinate2DMake(36.1024, -114.3237);
    points[109] = CLLocationCoordinate2DMake(36.0624, -114.3292);
    points[110] = CLLocationCoordinate2DMake(36.0136, -114.2468);
    points[111] = CLLocationCoordinate2DMake(36.0313, -114.1534);
    points[112] = CLLocationCoordinate2DMake(36.0891, -114.1150);
    points[113] = CLLocationCoordinate2DMake(36.1068, -114.1260);
    points[114] = CLLocationCoordinate2DMake(36.1334, -114.0985);
    points[115] = CLLocationCoordinate2DMake(36.1934, -114.0439);
    points[116] = CLLocationCoordinate2DMake(36.3638, -114.0450);
    points[117] = CLLocationCoordinate2DMake(37.0001, -114.0508);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:118];
    
    return poly;
}


- (MKPolygon *)polygonForCalifornia
{
    CLLocationCoordinate2D points[111];
    
    points[0] = CLLocationCoordinate2DMake(41.9983, -124.4009);
    points[1] = CLLocationCoordinate2DMake(42.0024, -123.6237);
    points[2] = CLLocationCoordinate2DMake(42.0126, -123.1526);
    points[3] = CLLocationCoordinate2DMake(42.0075, -122.0073);
    points[4] = CLLocationCoordinate2DMake(41.9962, -121.2369);
    points[5] = CLLocationCoordinate2DMake(41.9983, -119.9982);
    points[6] = CLLocationCoordinate2DMake(39.0021, -120.0037);
    points[7] = CLLocationCoordinate2DMake(37.5555, -117.9575);
    points[8] = CLLocationCoordinate2DMake(36.3594, -116.3699);
    points[9] = CLLocationCoordinate2DMake(35.0019, -114.6336);
    points[10] = CLLocationCoordinate2DMake(34.9659, -114.6382);
    points[11] = CLLocationCoordinate2DMake(34.9107, -114.6286);
    points[12] = CLLocationCoordinate2DMake(34.8758, -114.6382);
    points[13] = CLLocationCoordinate2DMake(34.8454, -114.5970);
    points[14] = CLLocationCoordinate2DMake(34.7890, -114.5682);
    points[15] = CLLocationCoordinate2DMake(34.7269, -114.4968);
    points[16] = CLLocationCoordinate2DMake(34.6648, -114.4501);
    points[17] = CLLocationCoordinate2DMake(34.6581, -114.4597);
    points[18] = CLLocationCoordinate2DMake(34.5869, -114.4322);
    points[19] = CLLocationCoordinate2DMake(34.5235, -114.3787);
    points[20] = CLLocationCoordinate2DMake(34.4601, -114.3869);
    points[21] = CLLocationCoordinate2DMake(34.4500, -114.3361);
    points[22] = CLLocationCoordinate2DMake(34.4375, -114.3031);
    points[23] = CLLocationCoordinate2DMake(34.4024, -114.2674);
    points[24] = CLLocationCoordinate2DMake(34.3559, -114.1864);
    points[25] = CLLocationCoordinate2DMake(34.3049, -114.1383);
    points[26] = CLLocationCoordinate2DMake(34.2561, -114.1315);
    points[27] = CLLocationCoordinate2DMake(34.2595, -114.1651);
    points[28] = CLLocationCoordinate2DMake(34.2044, -114.2249);
    points[29] = CLLocationCoordinate2DMake(34.1914, -114.2221);
    points[30] = CLLocationCoordinate2DMake(34.1720, -114.2908);
    points[31] = CLLocationCoordinate2DMake(34.1368, -114.3237);
    points[32] = CLLocationCoordinate2DMake(34.1186, -114.3622);
    points[33] = CLLocationCoordinate2DMake(34.1118, -114.4089);
    points[34] = CLLocationCoordinate2DMake(34.0856, -114.4363);
    points[35] = CLLocationCoordinate2DMake(34.0276, -114.4336);
    points[36] = CLLocationCoordinate2DMake(34.0117, -114.4652);
    points[37] = CLLocationCoordinate2DMake(33.9582, -114.5119);
    points[38] = CLLocationCoordinate2DMake(33.9308, -114.5366);
    points[39] = CLLocationCoordinate2DMake(33.9058, -114.5091);
    points[40] = CLLocationCoordinate2DMake(33.8613, -114.5256);
    points[41] = CLLocationCoordinate2DMake(33.8248, -114.5215);
    points[42] = CLLocationCoordinate2DMake(33.7597, -114.5050);
    points[43] = CLLocationCoordinate2DMake(33.7083, -114.4940);
    points[44] = CLLocationCoordinate2DMake(33.6832, -114.5284);
    points[45] = CLLocationCoordinate2DMake(33.6363, -114.5242);
    points[46] = CLLocationCoordinate2DMake(33.5895, -114.5393);
    points[47] = CLLocationCoordinate2DMake(33.5528, -114.5242);
    points[48] = CLLocationCoordinate2DMake(33.5311, -114.5586);
    points[49] = CLLocationCoordinate2DMake(33.5070, -114.5778);
    points[50] = CLLocationCoordinate2DMake(33.4418, -114.6245);
    points[51] = CLLocationCoordinate2DMake(33.4142, -114.6506);
    points[52] = CLLocationCoordinate2DMake(33.4039, -114.7055);
    points[53] = CLLocationCoordinate2DMake(33.3546, -114.6973);
    points[54] = CLLocationCoordinate2DMake(33.3041, -114.7302);
    points[55] = CLLocationCoordinate2DMake(33.2858, -114.7206);
    points[56] = CLLocationCoordinate2DMake(33.2754, -114.6808);
    points[57] = CLLocationCoordinate2DMake(33.2582, -114.6698);
    points[58] = CLLocationCoordinate2DMake(33.2467, -114.6904);
    points[59] = CLLocationCoordinate2DMake(33.1720, -114.6794);
    points[60] = CLLocationCoordinate2DMake(33.0904, -114.7083);
    points[61] = CLLocationCoordinate2DMake(33.0858, -114.6918);
    points[62] = CLLocationCoordinate2DMake(33.0328, -114.6629);
    points[63] = CLLocationCoordinate2DMake(33.0501, -114.6451);
    points[64] = CLLocationCoordinate2DMake(33.0305, -114.6286);
    points[65] = CLLocationCoordinate2DMake(33.0282, -114.5888);
    points[66] = CLLocationCoordinate2DMake(33.0351, -114.5750);
    points[67] = CLLocationCoordinate2DMake(33.0328, -114.5174);
    points[68] = CLLocationCoordinate2DMake(32.9718, -114.4913);
    points[69] = CLLocationCoordinate2DMake(32.9764, -114.4775);
    points[70] = CLLocationCoordinate2DMake(32.9372, -114.4844);
    points[71] = CLLocationCoordinate2DMake(32.8427, -114.4679);
    points[72] = CLLocationCoordinate2DMake(32.8161, -114.5091);
    points[73] = CLLocationCoordinate2DMake(32.7850, -114.5311);
    points[74] = CLLocationCoordinate2DMake(32.7573, -114.5284);
    points[75] = CLLocationCoordinate2DMake(32.7503, -114.5641);
    points[76] = CLLocationCoordinate2DMake(32.7353, -114.6162);
    points[77] = CLLocationCoordinate2DMake(32.7480, -114.6986);
    points[78] = CLLocationCoordinate2DMake(32.7191, -114.7220);
    points[79] = CLLocationCoordinate2DMake(32.6868, -115.1944);
    points[80] = CLLocationCoordinate2DMake(32.5121, -117.3395);
    points[81] = CLLocationCoordinate2DMake(32.7838, -117.4823);
    points[82] = CLLocationCoordinate2DMake(33.0501, -117.5977);
    points[83] = CLLocationCoordinate2DMake(33.2341, -117.6814);
    points[84] = CLLocationCoordinate2DMake(33.4578, -118.0591);
    points[85] = CLLocationCoordinate2DMake(33.5403, -118.6290);
    points[86] = CLLocationCoordinate2DMake(33.7928, -118.7073);
    points[87] = CLLocationCoordinate2DMake(33.9582, -119.3706);
    points[88] = CLLocationCoordinate2DMake(34.1925, -120.0050);
    points[89] = CLLocationCoordinate2DMake(34.2561, -120.7164);
    points[90] = CLLocationCoordinate2DMake(34.5360, -120.9128);
    points[91] = CLLocationCoordinate2DMake(34.9749, -120.8427);
    points[92] = CLLocationCoordinate2DMake(35.2131, -121.1325);
    points[93] = CLLocationCoordinate2DMake(35.5255, -121.3220);
    points[94] = CLLocationCoordinate2DMake(35.9691, -121.8013);
    points[95] = CLLocationCoordinate2DMake(36.2808, -122.1446);
    points[96] = CLLocationCoordinate2DMake(36.7268, -122.1721);
    points[97] = CLLocationCoordinate2DMake(37.2227, -122.6871);
    points[98] = CLLocationCoordinate2DMake(37.7783, -122.8903);
    points[99] = CLLocationCoordinate2DMake(37.8965, -123.2378);
    points[100] = CLLocationCoordinate2DMake(38.3449, -123.3202);
    points[101] = CLLocationCoordinate2DMake(38.7423, -123.8338);
    points[102] = CLLocationCoordinate2DMake(38.9946, -123.9793);
    points[103] = CLLocationCoordinate2DMake(39.3088, -124.0329);
    points[104] = CLLocationCoordinate2DMake(39.7642, -124.0823);
    points[105] = CLLocationCoordinate2DMake(40.1663, -124.5314);
    points[106] = CLLocationCoordinate2DMake(40.4658, -124.6509);
    points[107] = CLLocationCoordinate2DMake(41.0110, -124.3144);
    points[108] = CLLocationCoordinate2DMake(41.2386, -124.3419);
    points[109] = CLLocationCoordinate2DMake(41.7170, -124.4545);
    points[110] = CLLocationCoordinate2DMake(41.9983, -124.4009);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:111];
    
    return poly;
}


- (MKPolygon *)polygonForColorado
{
    CLLocationCoordinate2D points[4];
    
    points[0] = CLLocationCoordinate2DMake(36.9949, -102.0424);
    points[1] = CLLocationCoordinate2DMake(41.0006, -102.0534);
    points[2] = CLLocationCoordinate2DMake(40.9996, -109.0489);
    points[3] = CLLocationCoordinate2DMake(36.9991, -109.0451);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:4];
    
    return poly;
}


- (MKPolygon *)polygonForConnecticut
{
    CLLocationCoordinate2D points[31];
    
    points[0] = CLLocationCoordinate2DMake(42.0498, -73.4875);
    points[1] = CLLocationCoordinate2DMake(42.0511, -73.4247);
    points[2] = CLLocationCoordinate2DMake(42.0371, -72.8146);
    points[3] = CLLocationCoordinate2DMake(41.9983, -72.8174);
    points[4] = CLLocationCoordinate2DMake(42.0044, -72.7638);
    points[5] = CLLocationCoordinate2DMake(42.0360, -72.7563);
    points[6] = CLLocationCoordinate2DMake(42.0368, -72.6945);
    points[7] = CLLocationCoordinate2DMake(42.0309, -72.6086);
    points[8] = CLLocationCoordinate2DMake(42.0269, -72.6059);
    points[9] = CLLocationCoordinate2DMake(42.0269, -72.5784);
    points[10] = CLLocationCoordinate2DMake(42.0350, -72.5729);
    points[11] = CLLocationCoordinate2DMake(42.0350, -72.4026);
    points[12] = CLLocationCoordinate2DMake(42.0233, -71.8005);
    points[13] = CLLocationCoordinate2DMake(41.6832, -71.7874);
    points[14] = CLLocationCoordinate2DMake(41.4165, -71.7984);
    points[15] = CLLocationCoordinate2DMake(41.3892, -71.8341);
    points[16] = CLLocationCoordinate2DMake(41.3273, -71.8526);
    points[17] = CLLocationCoordinate2DMake(41.3103, -71.9302);
    points[18] = CLLocationCoordinate2DMake(41.2907, -72.0195);
    points[19] = CLLocationCoordinate2DMake(41.2618, -72.0827);
    points[20] = CLLocationCoordinate2DMake(41.1962, -72.4322);
    points[21] = CLLocationCoordinate2DMake(41.0866, -73.0007);
    points[22] = CLLocationCoordinate2DMake(41.0255, -73.2493);
    points[23] = CLLocationCoordinate2DMake(40.9509, -73.6132);
    points[24] = CLLocationCoordinate2DMake(40.9830, -73.6606);
    points[25] = CLLocationCoordinate2DMake(41.0338, -73.6723);
    points[26] = CLLocationCoordinate2DMake(41.1011, -73.7272);
    points[27] = CLLocationCoordinate2DMake(41.2153, -73.4834);
    points[28] = CLLocationCoordinate2DMake(41.2953, -73.5507);
    points[29] = CLLocationCoordinate2DMake(41.4906, -73.5329);
    points[30] = CLLocationCoordinate2DMake(42.0493, -73.4875);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:31];
    
    return poly;
}


- (MKPolygon *)polygonForDelaware
{
    CLLocationCoordinate2D points[23];
    
    points[0] = CLLocationCoordinate2DMake(39.7222, -75.7886);
    points[1] = CLLocationCoordinate2DMake(39.5210, -75.7837);
    points[2] = CLLocationCoordinate2DMake(38.9081, -75.7288);
    points[3] = CLLocationCoordinate2DMake(38.5911, -75.7068);
    points[4] = CLLocationCoordinate2DMake(38.4600, -75.6944);
    points[5] = CLLocationCoordinate2DMake(38.4482, -74.8608);
    points[6] = CLLocationCoordinate2DMake(38.8654, -74.8526);
    points[7] = CLLocationCoordinate2DMake(38.8451, -75.0504);
    points[8] = CLLocationCoordinate2DMake(39.0565, -75.1678);
    points[9] = CLLocationCoordinate2DMake(39.2525, -75.3236);
    points[10] = CLLocationCoordinate2DMake(39.3662, -75.4610);
    points[11] = CLLocationCoordinate2DMake(39.4500, -75.5544);
    points[12] = CLLocationCoordinate2DMake(39.4966, -75.5612);
    points[13] = CLLocationCoordinate2DMake(39.4998, -75.5283);
    points[14] = CLLocationCoordinate2DMake(39.5411, -75.5338);
    points[15] = CLLocationCoordinate2DMake(39.5761, -75.5090);
    points[16] = CLLocationCoordinate2DMake(39.6237, -75.5708);
    points[17] = CLLocationCoordinate2DMake(39.6713, -75.5104);
    points[18] = CLLocationCoordinate2DMake(39.7167, -75.4843);
    points[19] = CLLocationCoordinate2DMake(39.8015, -75.4146);
    points[20] = CLLocationCoordinate2DMake(39.8249, -75.4692);
    points[21] = CLLocationCoordinate2DMake(39.8296, -75.6477);
    points[22] = CLLocationCoordinate2DMake(39.7199, -75.7906);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:23];
    
    return poly;
}


- (MKPolygon *)polygonForFlorida
{
    CLLocationCoordinate2D points[67];
    
    points[0] = CLLocationCoordinate2DMake(30.9988, -87.6050);
    points[1] = CLLocationCoordinate2DMake(30.9964, -86.5613);
    points[2] = CLLocationCoordinate2DMake(31.0035, -85.5313);
    points[3] = CLLocationCoordinate2DMake(31.0012, -85.1193);
    points[4] = CLLocationCoordinate2DMake(31.0023, -85.0012);
    points[5] = CLLocationCoordinate2DMake(31.0005, -85.0018);
    points[6] = CLLocationCoordinate2DMake(30.9117, -84.9586);
    points[7] = CLLocationCoordinate2DMake(30.7831, -84.9257);
    points[8] = CLLocationCoordinate2DMake(30.7041, -84.8639);
    points[9] = CLLocationCoordinate2DMake(30.6131, -82.9688);
    points[10] = CLLocationCoordinate2DMake(30.5682, -82.2162);
    points[11] = CLLocationCoordinate2DMake(30.4842, -82.2148);
    points[12] = CLLocationCoordinate2DMake(30.3859, -82.2025);
    points[13] = CLLocationCoordinate2DMake(30.3598, -82.1585);
    points[14] = CLLocationCoordinate2DMake(30.3575, -82.0610);
    points[15] = CLLocationCoordinate2DMake(30.4309, -82.0363);
    points[16] = CLLocationCoordinate2DMake(30.4866, -82.0239);
    points[17] = CLLocationCoordinate2DMake(30.6379, -82.0459);
    points[18] = CLLocationCoordinate2DMake(30.7560, -82.0239);
    points[19] = CLLocationCoordinate2DMake(30.8221, -81.9498);
    points[20] = CLLocationCoordinate2DMake(30.7713, -81.7657);
    points[21] = CLLocationCoordinate2DMake(30.7241, -81.6023);
    points[22] = CLLocationCoordinate2DMake(30.7041, -81.2288);
    points[23] = CLLocationCoordinate2DMake(30.4345, -81.2357);
    points[24] = CLLocationCoordinate2DMake(30.3160, -81.1725);
    points[25] = CLLocationCoordinate2DMake(29.7763, -81.0379);
    points[26] = CLLocationCoordinate2DMake(28.8603, -80.5861);
    points[27] = CLLocationCoordinate2DMake(28.4771, -80.3650);
    points[28] = CLLocationCoordinate2DMake(28.1882, -80.3815);
    points[29] = CLLocationCoordinate2DMake(27.1789, -79.9255);
    points[30] = CLLocationCoordinate2DMake(26.8425, -79.8198);
    points[31] = CLLocationCoordinate2DMake(26.1394, -79.9118);
    points[32] = CLLocationCoordinate2DMake(25.5115, -79.9997);
    points[33] = CLLocationCoordinate2DMake(24.8802, -80.3815);
    points[34] = CLLocationCoordinate2DMake(24.5384, -80.8704);
    points[35] = CLLocationCoordinate2DMake(24.3959, -81.9250);
    points[36] = CLLocationCoordinate2DMake(24.4496, -82.2066);
    points[37] = CLLocationCoordinate2DMake(24.5484, -82.3137);
    points[38] = CLLocationCoordinate2DMake(24.6982, -82.1997);
    points[39] = CLLocationCoordinate2DMake(25.2112, -81.3977);
    points[40] = CLLocationCoordinate2DMake(25.6019, -81.4622);
    points[41] = CLLocationCoordinate2DMake(25.9235, -81.9456);
    points[42] = CLLocationCoordinate2DMake(26.3439, -82.2876);
    points[43] = CLLocationCoordinate2DMake(26.9098, -82.5307);
    points[44] = CLLocationCoordinate2DMake(27.3315, -82.8342);
    points[45] = CLLocationCoordinate2DMake(27.7565, -83.0182);
    points[46] = CLLocationCoordinate2DMake(28.0574, -83.0017);
    points[47] = CLLocationCoordinate2DMake(28.6098, -82.8548);
    points[48] = CLLocationCoordinate2DMake(28.9697, -83.0264);
    points[49] = CLLocationCoordinate2DMake(29.0478, -83.2050);
    points[50] = CLLocationCoordinate2DMake(29.4157, -83.5318);
    points[51] = CLLocationCoordinate2DMake(29.9133, -83.9767);
    points[52] = CLLocationCoordinate2DMake(29.8930, -84.1072);
    points[53] = CLLocationCoordinate2DMake(29.6940, -84.4409);
    points[54] = CLLocationCoordinate2DMake(29.4551, -85.0465);
    points[55] = CLLocationCoordinate2DMake(29.4946, -85.3610);
    points[56] = CLLocationCoordinate2DMake(29.7262, -85.5807);
    points[57] = CLLocationCoordinate2DMake(30.1594, -86.1946);
    points[58] = CLLocationCoordinate2DMake(30.2175, -86.8510);
    points[59] = CLLocationCoordinate2DMake(30.1493, -87.5164);
    points[60] = CLLocationCoordinate2DMake(30.2828, -87.5178);
    points[61] = CLLocationCoordinate2DMake(30.4362, -87.3664);
    points[62] = CLLocationCoordinate2DMake(30.5067, -87.4433);
    points[63] = CLLocationCoordinate2DMake(30.6438, -87.3945);
    points[64] = CLLocationCoordinate2DMake(30.8651, -87.6342);
    points[65] = CLLocationCoordinate2DMake(30.9647, -87.5875);
    points[66] = CLLocationCoordinate2DMake(30.9964, -87.5978);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:67];
    
    return poly;
}


- (MKPolygon *)polygonForGeorgia
{
    CLLocationCoordinate2D points[66];
    
    points[0] = CLLocationCoordinate2DMake(34.9844, -85.6044);
    points[1] = CLLocationCoordinate2DMake(34.9906, -84.7266);
    points[2] = CLLocationCoordinate2DMake(34.9895, -84.1580);
    points[3] = CLLocationCoordinate2DMake(34.9996, -83.1088);
    points[4] = CLLocationCoordinate2DMake(34.9287, -83.1418);
    points[5] = CLLocationCoordinate2DMake(34.8318, -83.3025);
    points[6] = CLLocationCoordinate2DMake(34.7281, -83.3560);
    points[7] = CLLocationCoordinate2DMake(34.6569, -83.3080);
    points[8] = CLLocationCoordinate2DMake(34.5744, -83.1528);
    points[9] = CLLocationCoordinate2DMake(34.4839, -83.0072);
    points[10] = CLLocationCoordinate2DMake(34.4681, -82.8918);
    points[11] = CLLocationCoordinate2DMake(34.4443, -82.8589);
    points[12] = CLLocationCoordinate2DMake(34.2674, -82.7490);
    points[13] = CLLocationCoordinate2DMake(34.1254, -82.6831);
    points[14] = CLLocationCoordinate2DMake(34.0140, -82.5952);
    points[15] = CLLocationCoordinate2DMake(33.8647, -82.3988);
    points[16] = CLLocationCoordinate2DMake(33.7563, -82.2505);
    points[17] = CLLocationCoordinate2DMake(33.6592, -82.1997);
    points[18] = CLLocationCoordinate2DMake(33.5963, -82.1558);
    points[19] = CLLocationCoordinate2DMake(33.5301, -82.0097);
    points[20] = CLLocationCoordinate2DMake(33.4588, -81.9240);
    points[21] = CLLocationCoordinate2DMake(33.3707, -81.9484);
    points[22] = CLLocationCoordinate2DMake(33.2077, -81.8303);
    points[23] = CLLocationCoordinate2DMake(33.1674, -81.7795);
    points[24] = CLLocationCoordinate2DMake(33.1456, -81.7424);
    points[25] = CLLocationCoordinate2DMake(33.0881, -81.6078);
    points[26] = CLLocationCoordinate2DMake(33.0075, -81.5034);
    points[27] = CLLocationCoordinate2DMake(32.9418, -81.5089);
    points[28] = CLLocationCoordinate2DMake(32.6914, -81.4142);
    points[29] = CLLocationCoordinate2DMake(32.6272, -81.4176);
    points[30] = CLLocationCoordinate2DMake(32.5283, -81.2769);
    points[31] = CLLocationCoordinate2DMake(32.4576, -81.1945);
    points[32] = CLLocationCoordinate2DMake(32.3185, -81.1642);
    points[33] = CLLocationCoordinate2DMake(32.2151, -81.1436);
    points[34] = CLLocationCoordinate2DMake(32.1128, -81.1134);
    points[35] = CLLocationCoordinate2DMake(32.0382, -80.9215);
    points[36] = CLLocationCoordinate2DMake(32.0333, -80.7509);
    points[37] = CLLocationCoordinate2DMake(31.4697, -80.9665);
    points[38] = CLLocationCoordinate2DMake(30.9988, -81.1011);
    points[39] = CLLocationCoordinate2DMake(30.7041, -81.2288);
    points[40] = CLLocationCoordinate2DMake(30.7241, -81.6023);
    points[41] = CLLocationCoordinate2DMake(30.7713, -81.7657);
    points[42] = CLLocationCoordinate2DMake(30.8221, -81.9498);
    points[43] = CLLocationCoordinate2DMake(30.7560, -82.0239);
    points[44] = CLLocationCoordinate2DMake(30.6379, -82.0459);
    points[45] = CLLocationCoordinate2DMake(30.4866, -82.0239);
    points[46] = CLLocationCoordinate2DMake(30.4309, -82.0363);
    points[47] = CLLocationCoordinate2DMake(30.3575, -82.0610);
    points[48] = CLLocationCoordinate2DMake(30.3598, -82.1585);
    points[49] = CLLocationCoordinate2DMake(30.3859, -82.2025);
    points[50] = CLLocationCoordinate2DMake(30.4842, -82.2148);
    points[51] = CLLocationCoordinate2DMake(30.5682, -82.2162);
    points[52] = CLLocationCoordinate2DMake(30.6131, -82.9688);
    points[53] = CLLocationCoordinate2DMake(30.7041, -84.8639);
    points[54] = CLLocationCoordinate2DMake(30.7831, -84.9257);
    points[55] = CLLocationCoordinate2DMake(30.9117, -84.9586);
    points[56] = CLLocationCoordinate2DMake(31.0005, -85.0018);
    points[57] = CLLocationCoordinate2DMake(31.0003, -85.0012);
    points[58] = CLLocationCoordinate2DMake(31.1079, -85.0349);
    points[59] = CLLocationCoordinate2DMake(31.1946, -85.1077);
    points[60] = CLLocationCoordinate2DMake(31.3384, -85.0836);
    points[61] = CLLocationCoordinate2DMake(31.5200, -85.0438);
    points[62] = CLLocationCoordinate2DMake(31.7947, -85.1358);
    points[63] = CLLocationCoordinate2DMake(32.1535, -85.0342);
    points[64] = CLLocationCoordinate2DMake(32.2593, -84.8927);
    points[65] = CLLocationCoordinate2DMake(32.8404, -85.1756);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:66];
    
    return poly;
}


- (MKPolygon *)polygonForHawaii
{
    CLLocationCoordinate2D points[30];
    
    points[0] = CLLocationCoordinate2DMake(19.5158, -154.6284);
    points[1] = CLLocationCoordinate2DMake(19.8894, -154.8235);
    points[2] = CLLocationCoordinate2DMake(20.1849, -155.0391);
    points[3] = CLLocationCoordinate2DMake(20.3910, -155.5952);
    points[4] = CLLocationCoordinate2DMake(20.8614, -155.7930);
    points[5] = CLLocationCoordinate2DMake(21.0948, -156.1858);
    points[6] = CLLocationCoordinate2DMake(21.3597, -156.6595);
    points[7] = CLLocationCoordinate2DMake(21.4748, -157.1182);
    points[8] = CLLocationCoordinate2DMake(21.5515, -157.5247);
    points[9] = CLLocationCoordinate2DMake(21.8832, -157.8186);
    points[10] = CLLocationCoordinate2DMake(22.3386, -159.2180);
    points[11] = CLLocationCoordinate2DMake(22.3374, -159.7508);
    points[12] = CLLocationCoordinate2DMake(22.1493, -160.1422);
    points[13] = CLLocationCoordinate2DMake(21.8857, -160.3922);
    points[14] = CLLocationCoordinate2DMake(21.6025, -160.3249);
    points[15] = CLLocationCoordinate2DMake(21.7276, -159.9939);
    points[16] = CLLocationCoordinate2DMake(21.6932, -159.4295);
    points[17] = CLLocationCoordinate2DMake(21.1037, -158.1784);
    points[18] = CLLocationCoordinate2DMake(20.8152, -157.4629);
    points[19] = CLLocationCoordinate2DMake(20.6803, -157.2171);
    points[20] = CLLocationCoordinate2DMake(20.3408, -156.8285);
    points[21] = CLLocationCoordinate2DMake(20.2931, -156.5456);
    points[22] = CLLocationCoordinate2DMake(20.1643, -156.1418);
    points[23] = CLLocationCoordinate2DMake(19.9308, -156.2393);
    points[24] = CLLocationCoordinate2DMake(19.2826, -156.1432);
    points[25] = CLLocationCoordinate2DMake(18.9881, -156.1212);
    points[26] = CLLocationCoordinate2DMake(18.7100, -155.7120);
    points[27] = CLLocationCoordinate2DMake(18.8829, -155.3673);
    points[28] = CLLocationCoordinate2DMake(19.2048, -154.8839);
    points[29] = CLLocationCoordinate2DMake(19.5158, -154.6271);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:30];
    
    return poly;
}


- (MKPolygon *)polygonForIowa
{
    CLLocationCoordinate2D points[60];
    
    points[0] = CLLocationCoordinate2DMake(40.5848, -95.7623);
    points[1] = CLLocationCoordinate2DMake(40.5785, -93.5445);
    points[2] = CLLocationCoordinate2DMake(40.6129, -91.7372);
    points[3] = CLLocationCoordinate2DMake(40.5545, -91.6768);
    points[4] = CLLocationCoordinate2DMake(40.5451, -91.6246);
    points[5] = CLLocationCoordinate2DMake(40.3622, -91.4365);
    points[6] = CLLocationCoordinate2DMake(40.4637, -91.3623);
    points[7] = CLLocationCoordinate2DMake(40.5482, -91.4021);
    points[8] = CLLocationCoordinate2DMake(40.6931, -91.1124);
    points[9] = CLLocationCoordinate2DMake(40.8107, -91.1028);
    points[10] = CLLocationCoordinate2DMake(40.9218, -90.9668);
    points[11] = CLLocationCoordinate2DMake(41.1642, -91.0121);
    points[12] = CLLocationCoordinate2DMake(41.2406, -91.1082);
    points[13] = CLLocationCoordinate2DMake(41.4067, -91.0451);
    points[14] = CLLocationCoordinate2DMake(41.4510, -90.7086);
    points[15] = CLLocationCoordinate2DMake(41.5178, -90.4793);
    points[16] = CLLocationCoordinate2DMake(41.5908, -90.3419);
    points[17] = CLLocationCoordinate2DMake(41.7457, -90.2788);
    points[18] = CLLocationCoordinate2DMake(41.8164, -90.2074);
    points[19] = CLLocationCoordinate2DMake(41.9023, -90.1538);
    points[20] = CLLocationCoordinate2DMake(42.0962, -90.1744);
    points[21] = CLLocationCoordinate2DMake(42.1441, -90.2692);
    points[22] = CLLocationCoordinate2DMake(42.2905, -90.4298);
    points[23] = CLLocationCoordinate2DMake(42.4093, -90.5370);
    points[24] = CLLocationCoordinate2DMake(42.5217, -90.6400);
    points[25] = CLLocationCoordinate2DMake(42.6360, -90.7127);
    points[26] = CLLocationCoordinate2DMake(42.6956, -90.7883);
    points[27] = CLLocationCoordinate2DMake(42.7712, -91.0533);
    points[28] = CLLocationCoordinate2DMake(42.8448, -91.0904);
    points[29] = CLLocationCoordinate2DMake(42.9082, -91.1398);
    points[30] = CLLocationCoordinate2DMake(43.0609, -91.1549);
    points[31] = CLLocationCoordinate2DMake(43.1391, -91.1522);
    points[32] = CLLocationCoordinate2DMake(43.2882, -91.0547);
    points[33] = CLLocationCoordinate2DMake(43.3322, -91.2057);
    points[34] = CLLocationCoordinate2DMake(43.4140, -91.2236);
    points[35] = CLLocationCoordinate2DMake(43.5008, -91.2305);
    points[36] = CLLocationCoordinate2DMake(43.5008, -96.4517);
    points[37] = CLLocationCoordinate2DMake(43.4818, -96.6110);
    points[38] = CLLocationCoordinate2DMake(43.3871, -96.5245);
    points[39] = CLLocationCoordinate2DMake(43.2232, -96.5533);
    points[40] = CLLocationCoordinate2DMake(43.1301, -96.4421);
    points[41] = CLLocationCoordinate2DMake(42.9243, -96.5479);
    points[42] = CLLocationCoordinate2DMake(42.7188, -96.6357);
    points[43] = CLLocationCoordinate2DMake(42.6158, -96.5561);
    points[44] = CLLocationCoordinate2DMake(42.5055, -96.4847);
    points[45] = CLLocationCoordinate2DMake(42.4772, -96.4806);
    points[46] = CLLocationCoordinate2DMake(42.4810, -96.3927);
    points[47] = CLLocationCoordinate2DMake(42.3667, -96.4050);
    points[48] = CLLocationCoordinate2DMake(42.2722, -96.3446);
    points[49] = CLLocationCoordinate2DMake(42.2051, -96.3625);
    points[50] = CLLocationCoordinate2DMake(41.9983, -96.2416);
    points[51] = CLLocationCoordinate2DMake(41.9513, -96.1372);
    points[52] = CLLocationCoordinate2DMake(41.7662, -96.0741);
    points[53] = CLLocationCoordinate2DMake(41.6267, -96.0988);
    points[54] = CLLocationCoordinate2DMake(41.4561, -95.9477);
    points[55] = CLLocationCoordinate2DMake(41.2819, -95.8804);
    points[56] = CLLocationCoordinate2DMake(41.0338, -95.8653);
    points[57] = CLLocationCoordinate2DMake(40.8346, -95.8365);
    points[58] = CLLocationCoordinate2DMake(40.6775, -95.8461);
    points[59] = CLLocationCoordinate2DMake(40.5837, -95.7610);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:60];
    
    return poly;
}


- (MKPolygon *)polygonForIdaho
{
    CLLocationCoordinate2D points[125];
    
    points[0] = CLLocationCoordinate2DMake(48.9991, -117.0323);
    points[1] = CLLocationCoordinate2DMake(49.0007, -116.0492);
    points[2] = CLLocationCoordinate2DMake(47.9771, -116.0458);
    points[3] = CLLocationCoordinate2DMake(47.5793, -115.6956);
    points[4] = CLLocationCoordinate2DMake(47.5487, -115.7533);
    points[5] = CLLocationCoordinate2DMake(47.4253, -115.7547);
    points[6] = CLLocationCoordinate2DMake(47.3025, -115.5267);
    points[7] = CLLocationCoordinate2DMake(47.2569, -115.3290);
    points[8] = CLLocationCoordinate2DMake(47.1888, -115.2933);
    points[9] = CLLocationCoordinate2DMake(47.0402, -115.1147);
    points[10] = CLLocationCoordinate2DMake(46.8423, -114.9307);
    points[11] = CLLocationCoordinate2DMake(46.7003, -114.7659);
    points[12] = CLLocationCoordinate2DMake(46.6362, -114.5929);
    points[13] = CLLocationCoordinate2DMake(46.6334, -114.4652);
    points[14] = CLLocationCoordinate2DMake(46.6504, -114.3279);
    points[15] = CLLocationCoordinate2DMake(46.5069, -114.3484);
    points[16] = CLLocationCoordinate2DMake(46.4530, -114.3896);
    points[17] = CLLocationCoordinate2DMake(46.3441, -114.4171);
    points[18] = CLLocationCoordinate2DMake(46.2577, -114.4652);
    points[19] = CLLocationCoordinate2DMake(46.1237, -114.5132);
    points[20] = CLLocationCoordinate2DMake(45.9989, -114.4817);
    points[21] = CLLocationCoordinate2DMake(45.8613, -114.4391);
    points[22] = CLLocationCoordinate2DMake(45.7733, -114.5641);
    points[23] = CLLocationCoordinate2DMake(45.6755, -114.5215);
    points[24] = CLLocationCoordinate2DMake(45.5583, -114.5668);
    points[25] = CLLocationCoordinate2DMake(45.5439, -114.4652);
    points[26] = CLLocationCoordinate2DMake(45.4592, -114.3347);
    points[27] = CLLocationCoordinate2DMake(45.5525, -114.2358);
    points[28] = CLLocationCoordinate2DMake(45.5631, -114.1315);
    points[29] = CLLocationCoordinate2DMake(45.6908, -113.9722);
    points[30] = CLLocationCoordinate2DMake(45.6140, -113.8403);
    points[31] = CLLocationCoordinate2DMake(45.4447, -113.7964);
    points[32] = CLLocationCoordinate2DMake(45.2749, -113.7085);
    points[33] = CLLocationCoordinate2DMake(45.0269, -113.4229);
    points[34] = CLLocationCoordinate2DMake(44.9386, -113.4970);
    points[35] = CLLocationCoordinate2DMake(44.7887, -113.3459);
    points[36] = CLLocationCoordinate2DMake(44.8091, -113.2471);
    points[37] = CLLocationCoordinate2DMake(44.7389, -113.1152);
    points[38] = CLLocationCoordinate2DMake(44.5905, -113.0713);
    points[39] = CLLocationCoordinate2DMake(44.4857, -113.0205);
    points[40] = CLLocationCoordinate2DMake(44.3563, -112.8529);
    points[41] = CLLocationCoordinate2DMake(44.4181, -112.8296);
    points[42] = CLLocationCoordinate2DMake(44.4896, -112.7293);
    points[43] = CLLocationCoordinate2DMake(44.4475, -112.3901);
    points[44] = CLLocationCoordinate2DMake(44.5367, -112.3270);
    points[45] = CLLocationCoordinate2DMake(44.5229, -112.1127);
    points[46] = CLLocationCoordinate2DMake(44.5592, -111.8848);
    points[47] = CLLocationCoordinate2DMake(44.5151, -111.8285);
    points[48] = CLLocationCoordinate2DMake(44.5386, -111.4673);
    points[49] = CLLocationCoordinate2DMake(44.6198, -111.5071);
    points[50] = CLLocationCoordinate2DMake(44.7311, -111.3684);
    points[51] = CLLocationCoordinate2DMake(44.4759, -111.0539);
    points[52] = CLLocationCoordinate2DMake(43.8623, -111.0471);
    points[53] = CLLocationCoordinate2DMake(42.0013, -111.0471);
    points[54] = CLLocationCoordinate2DMake(41.9962, -112.1663);
    points[55] = CLLocationCoordinate2DMake(41.9871, -113.8458);
    points[56] = CLLocationCoordinate2DMake(41.9936, -114.0415);
    points[57] = CLLocationCoordinate2DMake(41.9942, -114.0422);
    points[58] = CLLocationCoordinate2DMake(42.0013, -114.8222);
    points[59] = CLLocationCoordinate2DMake(41.9973, -115.9126);
    points[60] = CLLocationCoordinate2DMake(42.0001, -117.0262);
    points[61] = CLLocationCoordinate2DMake(43.7820, -117.0277);
    points[62] = CLLocationCoordinate2DMake(43.8330, -117.0325);
    points[63] = CLLocationCoordinate2DMake(43.8632, -117.0030);
    points[64] = CLLocationCoordinate2DMake(43.9073, -116.9776);
    points[65] = CLLocationCoordinate2DMake(44.0244, -116.9302);
    points[66] = CLLocationCoordinate2DMake(44.0491, -116.9735);
    points[67] = CLLocationCoordinate2DMake(44.1014, -116.9330);
    points[68] = CLLocationCoordinate2DMake(44.1561, -116.8945);
    points[69] = CLLocationCoordinate2DMake(44.1965, -116.9714);
    points[70] = CLLocationCoordinate2DMake(44.2442, -116.9810);
    points[71] = CLLocationCoordinate2DMake(44.2486, -117.0339);
    points[72] = CLLocationCoordinate2DMake(44.2304, -117.0525);
    points[73] = CLLocationCoordinate2DMake(44.2585, -117.0895);
    points[74] = CLLocationCoordinate2DMake(44.2806, -117.1122);
    points[75] = CLLocationCoordinate2DMake(44.2590, -117.1541);
    points[76] = CLLocationCoordinate2DMake(44.2973, -117.2255);
    points[77] = CLLocationCoordinate2DMake(44.3445, -117.1994);
    points[78] = CLLocationCoordinate2DMake(44.3813, -117.2372);
    points[79] = CLLocationCoordinate2DMake(44.4769, -117.2269);
    points[80] = CLLocationCoordinate2DMake(44.5234, -117.1836);
    points[81] = CLLocationCoordinate2DMake(44.5376, -117.1458);
    points[82] = CLLocationCoordinate2DMake(44.7423, -117.0442);
    points[83] = CLLocationCoordinate2DMake(44.7921, -116.9316);
    points[84] = CLLocationCoordinate2DMake(44.8568, -116.8980);
    points[85] = CLLocationCoordinate2DMake(44.9356, -116.8327);
    points[86] = CLLocationCoordinate2DMake(44.9624, -116.8513);
    points[87] = CLLocationCoordinate2DMake(44.9896, -116.8554);
    points[88] = CLLocationCoordinate2DMake(45.0313, -116.8417);
    points[89] = CLLocationCoordinate2DMake(45.0968, -116.7819);
    points[90] = CLLocationCoordinate2DMake(45.1627, -116.7229);
    points[91] = CLLocationCoordinate2DMake(45.2178, -116.7105);
    points[92] = CLLocationCoordinate2DMake(45.3213, -116.6741);
    points[93] = CLLocationCoordinate2DMake(45.3984, -116.6185);
    points[94] = CLLocationCoordinate2DMake(45.4433, -116.5883);
    points[95] = CLLocationCoordinate2DMake(45.4630, -116.5553);
    points[96] = CLLocationCoordinate2DMake(45.5371, -116.5334);
    points[97] = CLLocationCoordinate2DMake(45.6140, -116.4640);
    points[98] = CLLocationCoordinate2DMake(45.6904, -116.5354);
    points[99] = CLLocationCoordinate2DMake(45.7340, -116.5354);
    points[100] = CLLocationCoordinate2DMake(45.7541, -116.5594);
    points[101] = CLLocationCoordinate2DMake(45.7843, -116.6357);
    points[102] = CLLocationCoordinate2DMake(45.7781, -116.5965);
    points[103] = CLLocationCoordinate2DMake(45.7805, -116.6597);
    points[104] = CLLocationCoordinate2DMake(45.8259, -116.7105);
    points[105] = CLLocationCoordinate2DMake(45.8159, -116.7586);
    points[106] = CLLocationCoordinate2DMake(45.8341, -116.7908);
    points[107] = CLLocationCoordinate2DMake(45.8642, -116.8046);
    points[108] = CLLocationCoordinate2DMake(45.9053, -116.8595);
    points[109] = CLLocationCoordinate2DMake(45.9545, -116.8739);
    points[110] = CLLocationCoordinate2DMake(45.9769, -116.8925);
    points[111] = CLLocationCoordinate2DMake(45.9960, -116.9165);
    points[112] = CLLocationCoordinate2DMake(46.0537, -116.9433);
    points[113] = CLLocationCoordinate2DMake(46.0785, -116.9762);
    points[114] = CLLocationCoordinate2DMake(46.1009, -116.9584);
    points[115] = CLLocationCoordinate2DMake(46.1432, -116.9357);
    points[116] = CLLocationCoordinate2DMake(46.1722, -116.9254);
    points[117] = CLLocationCoordinate2DMake(46.2022, -116.9659);
    points[118] = CLLocationCoordinate2DMake(46.2388, -116.9577);
    points[119] = CLLocationCoordinate2DMake(46.2848, -116.9879);
    points[120] = CLLocationCoordinate2DMake(46.3384, -117.0277);
    points[121] = CLLocationCoordinate2DMake(46.3498, -117.0621);
    points[122] = CLLocationCoordinate2DMake(46.4274, -117.0394);
    points[123] = CLLocationCoordinate2DMake(46.5060, -117.0394);
    points[124] = CLLocationCoordinate2DMake(47.9614, -117.0415);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:125];
    
    return poly;
}


- (MKPolygon *)polygonForIllinois
{
    CLLocationCoordinate2D points[70];
    
    points[0] = CLLocationCoordinate2DMake(42.5116, -90.6290);
    points[1] = CLLocationCoordinate2DMake(42.4924, -87.0213);
    points[2] = CLLocationCoordinate2DMake(41.7641, -87.2067);
    points[3] = CLLocationCoordinate2DMake(41.7598, -87.5236);
    points[4] = CLLocationCoordinate2DMake(39.6417, -87.5336);
    points[5] = CLLocationCoordinate2DMake(39.3566, -87.5308);
    points[6] = CLLocationCoordinate2DMake(39.1386, -87.6517);
    points[7] = CLLocationCoordinate2DMake(38.9445, -87.5157);
    points[8] = CLLocationCoordinate2DMake(38.7294, -87.5047);
    points[9] = CLLocationCoordinate2DMake(38.6115, -87.6146);
    points[10] = CLLocationCoordinate2DMake(38.4944, -87.6544);
    points[11] = CLLocationCoordinate2DMake(38.3740, -87.7780);
    points[12] = CLLocationCoordinate2DMake(38.2856, -87.8371);
    points[13] = CLLocationCoordinate2DMake(38.2414, -87.9758);
    points[14] = CLLocationCoordinate2DMake(38.1454, -87.9291);
    points[15] = CLLocationCoordinate2DMake(37.9788, -88.0225);
    points[16] = CLLocationCoordinate2DMake(37.8900, -88.0458);
    points[17] = CLLocationCoordinate2DMake(37.7881, -88.0321);
    points[18] = CLLocationCoordinate2DMake(37.6349, -88.1529);
    points[19] = CLLocationCoordinate2DMake(37.5097, -88.0609);
    points[20] = CLLocationCoordinate2DMake(37.4149, -88.4152);
    points[21] = CLLocationCoordinate2DMake(37.2828, -88.5086);
    points[22] = CLLocationCoordinate2DMake(37.1428, -88.4221);
    points[23] = CLLocationCoordinate2DMake(37.0585, -88.4990);
    points[24] = CLLocationCoordinate2DMake(37.1428, -88.7256);
    points[25] = CLLocationCoordinate2DMake(37.2128, -88.9453);
    points[26] = CLLocationCoordinate2DMake(37.1559, -89.0689);
    points[27] = CLLocationCoordinate2DMake(37.0376, -89.1650);
    points[28] = CLLocationCoordinate2DMake(36.9894, -89.2873);
    points[29] = CLLocationCoordinate2DMake(37.1505, -89.4356);
    points[30] = CLLocationCoordinate2DMake(37.2762, -89.5345);
    points[31] = CLLocationCoordinate2DMake(37.3996, -89.4315);
    points[32] = CLLocationCoordinate2DMake(37.6936, -89.5358);
    points[33] = CLLocationCoordinate2DMake(37.9767, -89.9670);
    points[34] = CLLocationCoordinate2DMake(38.2587, -90.3790);
    points[35] = CLLocationCoordinate2DMake(38.6169, -90.2376);
    points[36] = CLLocationCoordinate2DMake(38.7573, -90.1744);
    points[37] = CLLocationCoordinate2DMake(38.8247, -90.1167);
    points[38] = CLLocationCoordinate2DMake(38.8846, -90.1799);
    points[39] = CLLocationCoordinate2DMake(38.9680, -90.4504);
    points[40] = CLLocationCoordinate2DMake(38.8654, -90.5905);
    points[41] = CLLocationCoordinate2DMake(39.0405, -90.7086);
    points[42] = CLLocationCoordinate2DMake(39.2301, -90.7306);
    points[43] = CLLocationCoordinate2DMake(39.3173, -90.8350);
    points[44] = CLLocationCoordinate2DMake(39.3853, -90.9338);
    points[45] = CLLocationCoordinate2DMake(39.5559, -91.1398);
    points[46] = CLLocationCoordinate2DMake(39.7262, -91.3554);
    points[47] = CLLocationCoordinate2DMake(39.8570, -91.4406);
    points[48] = CLLocationCoordinate2DMake(39.9940, -91.4941);
    points[49] = CLLocationCoordinate2DMake(40.1694, -91.5120);
    points[50] = CLLocationCoordinate2DMake(40.3497, -91.4667);
    points[51] = CLLocationCoordinate2DMake(40.4166, -91.3939);
    points[52] = CLLocationCoordinate2DMake(40.5566, -91.4021);
    points[53] = CLLocationCoordinate2DMake(40.6265, -91.2524);
    points[54] = CLLocationCoordinate2DMake(40.6963, -91.1151);
    points[55] = CLLocationCoordinate2DMake(40.8232, -91.0890);
    points[56] = CLLocationCoordinate2DMake(40.9312, -90.9792);
    points[57] = CLLocationCoordinate2DMake(41.1642, -91.0162);
    points[58] = CLLocationCoordinate2DMake(41.2355, -91.1055);
    points[59] = CLLocationCoordinate2DMake(41.4170, -91.0368);
    points[60] = CLLocationCoordinate2DMake(41.4458, -90.8487);
    points[61] = CLLocationCoordinate2DMake(41.4417, -90.7251);
    points[62] = CLLocationCoordinate2DMake(41.5816, -90.3516);
    points[63] = CLLocationCoordinate2DMake(41.7713, -90.2637);
    points[64] = CLLocationCoordinate2DMake(41.9023, -90.1538);
    points[65] = CLLocationCoordinate2DMake(42.0819, -90.1758);
    points[66] = CLLocationCoordinate2DMake(42.2021, -90.3598);
    points[67] = CLLocationCoordinate2DMake(42.2936, -90.4395);
    points[68] = CLLocationCoordinate2DMake(42.4032, -90.5356);
    points[69] = CLLocationCoordinate2DMake(42.4843, -90.6564);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:70];
    
    return poly;
}


- (MKPolygon *)polygonForIndiana
{
    CLLocationCoordinate2D points[53];
    
    points[0] = CLLocationCoordinate2DMake(41.7598, -87.5236);
    points[1] = CLLocationCoordinate2DMake(41.7611, -84.8090);
    points[2] = CLLocationCoordinate2DMake(39.0981, -84.8199);
    points[3] = CLLocationCoordinate2DMake(39.0533, -84.8927);
    points[4] = CLLocationCoordinate2DMake(38.8996, -84.8625);
    points[5] = CLLocationCoordinate2DMake(38.8312, -84.8268);
    points[6] = CLLocationCoordinate2DMake(38.7841, -84.8145);
    points[7] = CLLocationCoordinate2DMake(38.7905, -84.8941);
    points[8] = CLLocationCoordinate2DMake(38.7809, -84.9861);
    points[9] = CLLocationCoordinate2DMake(38.6877, -85.1797);
    points[10] = CLLocationCoordinate2DMake(38.7198, -85.4420);
    points[11] = CLLocationCoordinate2DMake(38.5653, -85.4091);
    points[12] = CLLocationCoordinate2DMake(38.4461, -85.5986);
    points[13] = CLLocationCoordinate2DMake(38.2695, -85.7510);
    points[14] = CLLocationCoordinate2DMake(38.2824, -85.8266);
    points[15] = CLLocationCoordinate2DMake(38.2414, -85.8376);
    points[16] = CLLocationCoordinate2DMake(38.0967, -85.9035);
    points[17] = CLLocationCoordinate2DMake(38.0232, -85.9200);
    points[18] = CLLocationCoordinate2DMake(37.9594, -86.0477);
    points[19] = CLLocationCoordinate2DMake(38.0102, -86.0944);
    points[20] = CLLocationCoordinate2DMake(38.0578, -86.2729);
    points[21] = CLLocationCoordinate2DMake(38.0935, -86.2811);
    points[22] = CLLocationCoordinate2DMake(38.1346, -86.2729);
    points[23] = CLLocationCoordinate2DMake(38.1842, -86.3704);
    points[24] = CLLocationCoordinate2DMake(38.0416, -86.5187);
    points[25] = CLLocationCoordinate2DMake(37.9193, -86.5874);
    points[26] = CLLocationCoordinate2DMake(37.8402, -86.6409);
    points[27] = CLLocationCoordinate2DMake(37.9085, -86.6478);
    points[28] = CLLocationCoordinate2DMake(37.9085, -86.6876);
    points[29] = CLLocationCoordinate2DMake(37.9821, -86.8236);
    points[30] = CLLocationCoordinate2DMake(37.9464, -86.9019);
    points[31] = CLLocationCoordinate2DMake(37.9009, -87.0392);
    points[32] = CLLocationCoordinate2DMake(37.7924, -87.1394);
    points[33] = CLLocationCoordinate2DMake(37.9464, -87.4429);
    points[34] = CLLocationCoordinate2DMake(37.9756, -87.5885);
    points[35] = CLLocationCoordinate2DMake(37.9225, -87.6283);
    points[36] = CLLocationCoordinate2DMake(37.8694, -87.6915);
    points[37] = CLLocationCoordinate2DMake(37.9236, -87.8879);
    points[38] = CLLocationCoordinate2DMake(37.7718, -87.9620);
    points[39] = CLLocationCoordinate2DMake(37.7881, -88.0321);
    points[40] = CLLocationCoordinate2DMake(37.8900, -88.0458);
    points[41] = CLLocationCoordinate2DMake(37.9788, -88.0225);
    points[42] = CLLocationCoordinate2DMake(38.1454, -87.9291);
    points[43] = CLLocationCoordinate2DMake(38.2414, -87.9758);
    points[44] = CLLocationCoordinate2DMake(38.2856, -87.8371);
    points[45] = CLLocationCoordinate2DMake(38.3740, -87.7780);
    points[46] = CLLocationCoordinate2DMake(38.4944, -87.6544);
    points[47] = CLLocationCoordinate2DMake(38.6115, -87.6146);
    points[48] = CLLocationCoordinate2DMake(38.7294, -87.5047);
    points[49] = CLLocationCoordinate2DMake(38.9445, -87.5157);
    points[50] = CLLocationCoordinate2DMake(39.1386, -87.6517);
    points[51] = CLLocationCoordinate2DMake(39.3566, -87.5308);
    points[52] = CLLocationCoordinate2DMake(41.7600, -87.5253);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:53];
    
    return poly;
}


- (MKPolygon *)polygonForKansas
{
    CLLocationCoordinate2D points[16];
    
    points[0] = CLLocationCoordinate2DMake(40.0024, -102.0506);
    points[1] = CLLocationCoordinate2DMake(39.9992, -95.3091);
    points[2] = CLLocationCoordinate2DMake(39.9445, -95.2213);
    points[3] = CLLocationCoordinate2DMake(39.8760, -95.0922);
    points[4] = CLLocationCoordinate2DMake(39.8971, -95.0098);
    points[5] = CLLocationCoordinate2DMake(39.8823, -94.9342);
    points[6] = CLLocationCoordinate2DMake(39.8286, -94.8930);
    points[7] = CLLocationCoordinate2DMake(39.7283, -94.8807);
    points[8] = CLLocationCoordinate2DMake(39.5612, -95.0990);
    points[9] = CLLocationCoordinate2DMake(39.2759, -94.8793);
    points[10] = CLLocationCoordinate2DMake(39.1673, -94.7255);
    points[11] = CLLocationCoordinate2DMake(39.1971, -94.6184);
    points[12] = CLLocationCoordinate2DMake(39.0789, -94.6143);
    points[13] = CLLocationCoordinate2DMake(38.8803, -94.6046);
    points[14] = CLLocationCoordinate2DMake(36.9982, -94.6211);
    points[15] = CLLocationCoordinate2DMake(36.9927, -102.0438);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:16];
    
    return poly;
}


- (MKPolygon *)polygonForKentucky
{
    CLLocationCoordinate2D points[80];
    
    points[0] = CLLocationCoordinate2DMake(36.4986, -89.5372);
    points[1] = CLLocationCoordinate2DMake(36.5074, -89.3010);
    points[2] = CLLocationCoordinate2DMake(36.5008, -88.6871);
    points[3] = CLLocationCoordinate2DMake(36.4931, -88.0568);
    points[4] = CLLocationCoordinate2DMake(36.6695, -88.0692);
    points[5] = CLLocationCoordinate2DMake(36.6343, -87.8535);
    points[6] = CLLocationCoordinate2DMake(36.6265, -86.5654);
    points[7] = CLLocationCoordinate2DMake(36.5979, -83.6375);
    points[8] = CLLocationCoordinate2DMake(36.6860, -83.3423);
    points[9] = CLLocationCoordinate2DMake(36.7466, -83.1377);
    points[10] = CLLocationCoordinate2DMake(36.9762, -82.8589);
    points[11] = CLLocationCoordinate2DMake(37.2894, -82.3192);
    points[12] = CLLocationCoordinate2DMake(37.4934, -82.0308);
    points[13] = CLLocationCoordinate2DMake(37.6653, -82.2121);
    points[14] = CLLocationCoordinate2DMake(37.8618, -82.4016);
    points[15] = CLLocationCoordinate2DMake(37.9908, -82.5073);
    points[16] = CLLocationCoordinate2DMake(38.1778, -82.6392);
    points[17] = CLLocationCoordinate2DMake(38.3761, -82.5952);
    points[18] = CLLocationCoordinate2DMake(38.5030, -82.7477);
    points[19] = CLLocationCoordinate2DMake(38.5825, -82.8369);
    points[20] = CLLocationCoordinate2DMake(38.7316, -82.9015);
    points[21] = CLLocationCoordinate2DMake(38.7027, -83.0196);
    points[22] = CLLocationCoordinate2DMake(38.6190, -83.1418);
    points[23] = CLLocationCoordinate2DMake(38.5986, -83.2819);
    points[24] = CLLocationCoordinate2DMake(38.6941, -83.5291);
    points[25] = CLLocationCoordinate2DMake(38.6351, -83.6595);
    points[26] = CLLocationCoordinate2DMake(38.7487, -83.8930);
    points[27] = CLLocationCoordinate2DMake(38.7701, -84.0440);
    points[28] = CLLocationCoordinate2DMake(38.8119, -84.2184);
    points[29] = CLLocationCoordinate2DMake(38.9872, -84.3228);
    points[30] = CLLocationCoordinate2DMake(39.1013, -84.4917);
    points[31] = CLLocationCoordinate2DMake(39.1183, -84.6277);
    points[32] = CLLocationCoordinate2DMake(39.1439, -84.7554);
    points[33] = CLLocationCoordinate2DMake(39.0523, -84.8914);
    points[34] = CLLocationCoordinate2DMake(38.9263, -84.8735);
    points[35] = CLLocationCoordinate2DMake(38.7894, -84.8131);
    points[36] = CLLocationCoordinate2DMake(38.7691, -84.9957);
    points[37] = CLLocationCoordinate2DMake(38.6866, -85.1921);
    points[38] = CLLocationCoordinate2DMake(38.7209, -85.4407);
    points[39] = CLLocationCoordinate2DMake(38.5653, -85.4077);
    points[40] = CLLocationCoordinate2DMake(38.4461, -85.5972);
    points[41] = CLLocationCoordinate2DMake(38.2748, -85.7455);
    points[42] = CLLocationCoordinate2DMake(38.2716, -85.8087);
    points[43] = CLLocationCoordinate2DMake(38.2069, -85.8650);
    points[44] = CLLocationCoordinate2DMake(38.0286, -85.9323);
    points[45] = CLLocationCoordinate2DMake(37.9550, -86.0422);
    points[46] = CLLocationCoordinate2DMake(38.0135, -86.1108);
    points[47] = CLLocationCoordinate2DMake(38.0643, -86.2756);
    points[48] = CLLocationCoordinate2DMake(38.1389, -86.2770);
    points[49] = CLLocationCoordinate2DMake(38.1864, -86.3690);
    points[50] = CLLocationCoordinate2DMake(38.0308, -86.5283);
    points[51] = CLLocationCoordinate2DMake(37.9204, -86.5874);
    points[52] = CLLocationCoordinate2DMake(37.8423, -86.6423);
    points[53] = CLLocationCoordinate2DMake(37.9041, -86.6547);
    points[54] = CLLocationCoordinate2DMake(37.9864, -86.8250);
    points[55] = CLLocationCoordinate2DMake(37.9095, -87.0406);
    points[56] = CLLocationCoordinate2DMake(37.7935, -87.1381);
    points[57] = CLLocationCoordinate2DMake(37.9420, -87.4168);
    points[58] = CLLocationCoordinate2DMake(37.9745, -87.5858);
    points[59] = CLLocationCoordinate2DMake(37.8749, -87.6929);
    points[60] = CLLocationCoordinate2DMake(37.9215, -87.8906);
    points[61] = CLLocationCoordinate2DMake(37.7761, -87.9552);
    points[62] = CLLocationCoordinate2DMake(37.7903, -88.0307);
    points[63] = CLLocationCoordinate2DMake(37.6479, -88.1584);
    points[64] = CLLocationCoordinate2DMake(37.5097, -88.0664);
    points[65] = CLLocationCoordinate2DMake(37.4193, -88.4180);
    points[66] = CLLocationCoordinate2DMake(37.2784, -88.5086);
    points[67] = CLLocationCoordinate2DMake(37.1428, -88.4248);
    points[68] = CLLocationCoordinate2DMake(37.0738, -88.5059);
    points[69] = CLLocationCoordinate2DMake(37.1461, -88.7421);
    points[70] = CLLocationCoordinate2DMake(37.2249, -88.9522);
    points[71] = CLLocationCoordinate2DMake(37.1406, -89.0964);
    points[72] = CLLocationCoordinate2DMake(37.0278, -89.1815);
    points[73] = CLLocationCoordinate2DMake(36.9488, -89.1032);
    points[74] = CLLocationCoordinate2DMake(36.8214, -89.1733);
    points[75] = CLLocationCoordinate2DMake(36.7411, -89.1925);
    points[76] = CLLocationCoordinate2DMake(36.6265, -89.2007);
    points[77] = CLLocationCoordinate2DMake(36.5449, -89.2529);
    points[78] = CLLocationCoordinate2DMake(36.6232, -89.3518);
    points[79] = CLLocationCoordinate2DMake(36.4986, -89.5345);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:80];
    
    return poly;
}


- (MKPolygon *)polygonForLouisiana
{
    CLLocationCoordinate2D points[109];
    
    points[0] = CLLocationCoordinate2DMake(33.0225, -94.0430);
    points[1] = CLLocationCoordinate2DMake(33.0179, -93.0048);
    points[2] = CLLocationCoordinate2DMake(33.0036, -91.1659);
    points[3] = CLLocationCoordinate2DMake(32.9269, -91.2209);
    points[4] = CLLocationCoordinate2DMake(32.8773, -91.1220);
    points[5] = CLLocationCoordinate2DMake(32.8358, -91.1481);
    points[6] = CLLocationCoordinate2DMake(32.7642, -91.1412);
    points[7] = CLLocationCoordinate2DMake(32.6382, -91.1536);
    points[8] = CLLocationCoordinate2DMake(32.5804, -91.1069);
    points[9] = CLLocationCoordinate2DMake(32.6093, -91.0080);
    points[10] = CLLocationCoordinate2DMake(32.4588, -91.0904);
    points[11] = CLLocationCoordinate2DMake(32.4379, -91.0355);
    points[12] = CLLocationCoordinate2DMake(32.3742, -91.0286);
    points[13] = CLLocationCoordinate2DMake(32.3150, -90.9064);
    points[14] = CLLocationCoordinate2DMake(32.2616, -90.9723);
    points[15] = CLLocationCoordinate2DMake(32.1942, -91.0464);
    points[16] = CLLocationCoordinate2DMake(32.1198, -91.0739);
    points[17] = CLLocationCoordinate2DMake(32.0593, -91.0464);
    points[18] = CLLocationCoordinate2DMake(31.9918, -91.1014);
    points[19] = CLLocationCoordinate2DMake(31.9498, -91.1865);
    points[20] = CLLocationCoordinate2DMake(31.8262, -91.3101);
    points[21] = CLLocationCoordinate2DMake(31.7947, -91.3527);
    points[22] = CLLocationCoordinate2DMake(31.6230, -91.3925);
    points[23] = CLLocationCoordinate2DMake(31.6218, -91.5134);
    points[24] = CLLocationCoordinate2DMake(31.5668, -91.4310);
    points[25] = CLLocationCoordinate2DMake(31.5130, -91.5161);
    points[26] = CLLocationCoordinate2DMake(31.3701, -91.5244);
    points[27] = CLLocationCoordinate2DMake(31.2598, -91.5477);
    points[28] = CLLocationCoordinate2DMake(31.2692, -91.6425);
    points[29] = CLLocationCoordinate2DMake(31.2328, -91.6603);
    points[30] = CLLocationCoordinate2DMake(31.1917, -91.5848);
    points[31] = CLLocationCoordinate2DMake(31.1047, -91.6287);
    points[32] = CLLocationCoordinate2DMake(31.0318, -91.5614);
    points[33] = CLLocationCoordinate2DMake(30.9988, -91.6397);
    points[34] = CLLocationCoordinate2DMake(31.0012, -89.7336);
    points[35] = CLLocationCoordinate2DMake(30.6686, -89.8517);
    points[36] = CLLocationCoordinate2DMake(30.5386, -89.7858);
    points[37] = CLLocationCoordinate2DMake(30.3148, -89.6347);
    points[38] = CLLocationCoordinate2DMake(30.1807, -89.5688);
    points[39] = CLLocationCoordinate2DMake(30.1582, -89.4960);
    points[40] = CLLocationCoordinate2DMake(30.2140, -89.1843);
    points[41] = CLLocationCoordinate2DMake(30.1463, -89.0373);
    points[42] = CLLocationCoordinate2DMake(30.0905, -88.8354);
    points[43] = CLLocationCoordinate2DMake(29.8383, -88.7421);
    points[44] = CLLocationCoordinate2DMake(29.5758, -88.8712);
    points[45] = CLLocationCoordinate2DMake(29.1833, -88.9371);
    points[46] = CLLocationCoordinate2DMake(28.9649, -89.0359);
    points[47] = CLLocationCoordinate2DMake(28.8832, -89.2282);
    points[48] = CLLocationCoordinate2DMake(28.9048, -89.4754);
    points[49] = CLLocationCoordinate2DMake(29.1210, -89.7418);
    points[50] = CLLocationCoordinate2DMake(28.9529, -90.1126);
    points[51] = CLLocationCoordinate2DMake(28.9120, -90.6619);
    points[52] = CLLocationCoordinate2DMake(28.9553, -91.0355);
    points[53] = CLLocationCoordinate2DMake(29.1210, -91.3211);
    points[54] = CLLocationCoordinate2DMake(29.2864, -91.9061);
    points[55] = CLLocationCoordinate2DMake(29.4360, -92.7452);
    points[56] = CLLocationCoordinate2DMake(29.6009, -93.8177);
    points[57] = CLLocationCoordinate2DMake(29.6749, -93.8631);
    points[58] = CLLocationCoordinate2DMake(29.7370, -93.8933);
    points[59] = CLLocationCoordinate2DMake(29.7930, -93.9304);
    points[60] = CLLocationCoordinate2DMake(29.8216, -93.9276);
    points[61] = CLLocationCoordinate2DMake(29.8883, -93.8370);
    points[62] = CLLocationCoordinate2DMake(29.9811, -93.7985);
    points[63] = CLLocationCoordinate2DMake(30.0144, -93.7601);
    points[64] = CLLocationCoordinate2DMake(30.0691, -93.7106);
    points[65] = CLLocationCoordinate2DMake(30.0929, -93.7354);
    points[66] = CLLocationCoordinate2DMake(30.1166, -93.6996);
    points[67] = CLLocationCoordinate2DMake(30.1997, -93.7271);
    points[68] = CLLocationCoordinate2DMake(30.2899, -93.7106);
    points[69] = CLLocationCoordinate2DMake(30.3350, -93.7656);
    points[70] = CLLocationCoordinate2DMake(30.3871, -93.7601);
    points[71] = CLLocationCoordinate2DMake(30.4416, -93.6914);
    points[72] = CLLocationCoordinate2DMake(30.5102, -93.7106);
    points[73] = CLLocationCoordinate2DMake(30.5433, -93.7463);
    points[74] = CLLocationCoordinate2DMake(30.5954, -93.7106);
    points[75] = CLLocationCoordinate2DMake(30.5906, -93.6914);
    points[76] = CLLocationCoordinate2DMake(30.6545, -93.6859);
    points[77] = CLLocationCoordinate2DMake(30.6781, -93.6365);
    points[78] = CLLocationCoordinate2DMake(30.7513, -93.6200);
    points[79] = CLLocationCoordinate2DMake(30.7890, -93.5925);
    points[80] = CLLocationCoordinate2DMake(30.8150, -93.5513);
    points[81] = CLLocationCoordinate2DMake(30.8645, -93.5623);
    points[82] = CLLocationCoordinate2DMake(30.8881, -93.5788);
    points[83] = CLLocationCoordinate2DMake(30.9187, -93.5541);
    points[84] = CLLocationCoordinate2DMake(30.9423, -93.5294);
    points[85] = CLLocationCoordinate2DMake(31.0082, -93.5760);
    points[86] = CLLocationCoordinate2DMake(31.0318, -93.5101);
    points[87] = CLLocationCoordinate2DMake(31.0906, -93.5596);
    points[88] = CLLocationCoordinate2DMake(31.1211, -93.5321);
    points[89] = CLLocationCoordinate2DMake(31.1799, -93.5349);
    points[90] = CLLocationCoordinate2DMake(31.1658, -93.5953);
    points[91] = CLLocationCoordinate2DMake(31.2292, -93.6282);
    points[92] = CLLocationCoordinate2DMake(31.2668, -93.6118);
    points[93] = CLLocationCoordinate2DMake(31.3044, -93.6859);
    points[94] = CLLocationCoordinate2DMake(31.3888, -93.6694);
    points[95] = CLLocationCoordinate2DMake(31.4240, -93.7051);
    points[96] = CLLocationCoordinate2DMake(31.4427, -93.6859);
    points[97] = CLLocationCoordinate2DMake(31.4755, -93.7573);
    points[98] = CLLocationCoordinate2DMake(31.5083, -93.7189);
    points[99] = CLLocationCoordinate2DMake(31.5411, -93.8040);
    points[100] = CLLocationCoordinate2DMake(31.6113, -93.8425);
    points[101] = CLLocationCoordinate2DMake(31.6581, -93.8205);
    points[102] = CLLocationCoordinate2DMake(31.7071, -93.7985);
    points[103] = CLLocationCoordinate2DMake(31.8029, -93.8480);
    points[104] = CLLocationCoordinate2DMake(31.8892, -93.9029);
    points[105] = CLLocationCoordinate2DMake(31.9149, -93.9606);
    points[106] = CLLocationCoordinate2DMake(32.0081, -94.0430);
    points[107] = CLLocationCoordinate2DMake(32.7041, -94.0430);
    points[108] = CLLocationCoordinate2DMake(33.0225, -94.0430);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:109];
    
    return poly;
}


- (MKPolygon *)polygonForMassachusetts
{
    CLLocationCoordinate2D points[50];
    
    points[0] = CLLocationCoordinate2DMake(42.0003, -72.7789);
    points[1] = CLLocationCoordinate2DMake(42.0330, -72.7405);
    points[2] = CLLocationCoordinate2DMake(42.0330, -72.3779);
    points[3] = CLLocationCoordinate2DMake(42.0233, -71.8005);
    points[4] = CLLocationCoordinate2DMake(42.0080, -71.7991);
    points[5] = CLLocationCoordinate2DMake(42.0186, -71.3813);
    points[6] = CLLocationCoordinate2DMake(41.8929, -71.3809);
    points[7] = CLLocationCoordinate2DMake(41.8981, -71.3387);
    points[8] = CLLocationCoordinate2DMake(41.8358, -71.3370);
    points[9] = CLLocationCoordinate2DMake(41.8245, -71.3493);
    points[10] = CLLocationCoordinate2DMake(41.7816, -71.3342);
    points[11] = CLLocationCoordinate2DMake(41.7529, -71.2628);
    points[12] = CLLocationCoordinate2DMake(41.6719, -71.1914);
    points[13] = CLLocationCoordinate2DMake(41.6616, -71.1351);
    points[14] = CLLocationCoordinate2DMake(41.6124, -71.1433);
    points[15] = CLLocationCoordinate2DMake(41.5939, -71.1310);
    points[16] = CLLocationCoordinate2DMake(41.4973, -71.1214);
    points[17] = CLLocationCoordinate2DMake(41.3706, -71.0568);
    points[18] = CLLocationCoordinate2DMake(41.1590, -70.8316);
    points[19] = CLLocationCoordinate2DMake(41.1662, -69.9225);
    points[20] = CLLocationCoordinate2DMake(41.3201, -69.7948);
    points[21] = CLLocationCoordinate2DMake(41.8133, -69.7398);
    points[22] = CLLocationCoordinate2DMake(42.1939, -70.0337);
    points[23] = CLLocationCoordinate2DMake(42.2173, -70.5144);
    points[24] = CLLocationCoordinate2DMake(42.4133, -70.6984);
    points[25] = CLLocationCoordinate2DMake(42.6420, -70.3647);
    points[26] = CLLocationCoordinate2DMake(42.8286, -70.4759);
    points[27] = CLLocationCoordinate2DMake(42.8760, -70.6133);
    points[28] = CLLocationCoordinate2DMake(42.8619, -70.8440);
    points[29] = CLLocationCoordinate2DMake(42.8890, -70.9154);
    points[30] = CLLocationCoordinate2DMake(42.8075, -71.0651);
    points[31] = CLLocationCoordinate2DMake(42.8226, -71.1337);
    points[32] = CLLocationCoordinate2DMake(42.7873, -71.1859);
    points[33] = CLLocationCoordinate2DMake(42.7369, -71.1832);
    points[34] = CLLocationCoordinate2DMake(42.7470, -71.2189);
    points[35] = CLLocationCoordinate2DMake(42.7400, -71.2560);
    points[36] = CLLocationCoordinate2DMake(42.6970, -71.2941);
    points[37] = CLLocationCoordinate2DMake(42.7127, -71.9151);
    points[38] = CLLocationCoordinate2DMake(42.7309, -72.5441);
    points[39] = CLLocationCoordinate2DMake(42.7450, -73.2541);
    points[40] = CLLocationCoordinate2DMake(42.7460, -73.2664);
    points[41] = CLLocationCoordinate2DMake(42.5460, -73.3406);
    points[42] = CLLocationCoordinate2DMake(42.2671, -73.4436);
    points[43] = CLLocationCoordinate2DMake(42.1349, -73.4917);
    points[44] = CLLocationCoordinate2DMake(42.0880, -73.5081);
    points[45] = CLLocationCoordinate2DMake(42.0483, -73.4985);
    points[46] = CLLocationCoordinate2DMake(42.0452, -73.1841);
    points[47] = CLLocationCoordinate2DMake(42.0371, -72.8146);
    points[48] = CLLocationCoordinate2DMake(41.9962, -72.8160);
    points[49] = CLLocationCoordinate2DMake(42.0024, -72.7803);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:50];
    
    return poly;
}


- (MKPolygon *)polygonForMaryland
{
    CLLocationCoordinate2D points[109];
    
    points[0] = CLLocationCoordinate2DMake(39.7210, -79.4766);
    points[1] = CLLocationCoordinate2DMake(39.7220, -79.4778);
    points[2] = CLLocationCoordinate2DMake(39.7222, -75.7886);
    points[3] = CLLocationCoordinate2DMake(39.5655, -75.7809);
    points[4] = CLLocationCoordinate2DMake(39.3152, -75.7617);
    points[5] = CLLocationCoordinate2DMake(38.9498, -75.7329);
    points[6] = CLLocationCoordinate2DMake(38.4611, -75.6944);
    points[7] = CLLocationCoordinate2DMake(38.4482, -74.8581);
    points[8] = CLLocationCoordinate2DMake(38.0200, -74.9721);
    points[9] = CLLocationCoordinate2DMake(38.0275, -75.2316);
    points[10] = CLLocationCoordinate2DMake(37.9962, -75.6079);
    points[11] = CLLocationCoordinate2DMake(37.9951, -75.6230);
    points[12] = CLLocationCoordinate2DMake(37.9464, -75.6436);
    points[13] = CLLocationCoordinate2DMake(37.9529, -75.7288);
    points[14] = CLLocationCoordinate2DMake(37.9117, -75.8084);
    points[15] = CLLocationCoordinate2DMake(37.9095, -75.9512);
    points[16] = CLLocationCoordinate2DMake(37.9464, -75.9430);
    points[17] = CLLocationCoordinate2DMake(37.9529, -76.0584);
    points[18] = CLLocationCoordinate2DMake(37.8889, -76.2396);
    points[19] = CLLocationCoordinate2DMake(37.9474, -76.3454);
    points[20] = CLLocationCoordinate2DMake(37.9669, -76.4154);
    points[21] = CLLocationCoordinate2DMake(38.0146, -76.4703);
    points[22] = CLLocationCoordinate2DMake(38.0275, -76.5170);
    points[23] = CLLocationCoordinate2DMake(38.0751, -76.5363);
    points[24] = CLLocationCoordinate2DMake(38.1464, -76.6063);
    points[25] = CLLocationCoordinate2DMake(38.1616, -76.6928);
    points[26] = CLLocationCoordinate2DMake(38.1670, -76.7601);
    points[27] = CLLocationCoordinate2DMake(38.1637, -76.8494);
    points[28] = CLLocationCoordinate2DMake(38.2080, -76.9482);
    points[29] = CLLocationCoordinate2DMake(38.2748, -76.9908);
    points[30] = CLLocationCoordinate2DMake(38.3093, -77.0306);
    points[31] = CLLocationCoordinate2DMake(38.3761, -77.0114);
    points[32] = CLLocationCoordinate2DMake(38.4009, -77.0430);
    points[33] = CLLocationCoordinate2DMake(38.3697, -77.0897);
    points[34] = CLLocationCoordinate2DMake(38.3697, -77.1432);
    points[35] = CLLocationCoordinate2DMake(38.3320, -77.2627);
    points[36] = CLLocationCoordinate2DMake(38.4525, -77.3135);
    points[37] = CLLocationCoordinate2DMake(38.5514, -77.2737);
    points[38] = CLLocationCoordinate2DMake(38.5954, -77.2490);
    points[39] = CLLocationCoordinate2DMake(38.6373, -77.1281);
    points[40] = CLLocationCoordinate2DMake(38.6737, -77.1378);
    points[41] = CLLocationCoordinate2DMake(38.7112, -77.0760);
    points[42] = CLLocationCoordinate2DMake(38.7187, -77.0361);
    points[43] = CLLocationCoordinate2DMake(38.7766, -77.0416);
    points[44] = CLLocationCoordinate2DMake(38.8451, -77.0320);
    points[45] = CLLocationCoordinate2DMake(38.9025, -77.0708);
    points[46] = CLLocationCoordinate2DMake(38.9570, -77.1395);
    points[47] = CLLocationCoordinate2DMake(38.9773, -77.2335);
    points[48] = CLLocationCoordinate2DMake(39.0240, -77.2462);
    points[49] = CLLocationCoordinate2DMake(39.0634, -77.3431);
    points[50] = CLLocationCoordinate2DMake(39.0717, -77.4351);
    points[51] = CLLocationCoordinate2DMake(39.0792, -77.4636);
    points[52] = CLLocationCoordinate2DMake(39.1218, -77.5202);
    points[53] = CLLocationCoordinate2DMake(39.1804, -77.5092);
    points[54] = CLLocationCoordinate2DMake(39.2269, -77.4577);
    points[55] = CLLocationCoordinate2DMake(39.3051, -77.5666);
    points[56] = CLLocationCoordinate2DMake(39.3067, -77.6321);
    points[57] = CLLocationCoordinate2DMake(39.3202, -77.7159);
    points[58] = CLLocationCoordinate2DMake(39.3383, -77.7626);
    points[59] = CLLocationCoordinate2DMake(39.3810, -77.7544);
    points[60] = CLLocationCoordinate2DMake(39.4288, -77.7602);
    points[61] = CLLocationCoordinate2DMake(39.4367, -77.8038);
    points[62] = CLLocationCoordinate2DMake(39.4606, -77.7997);
    points[63] = CLLocationCoordinate2DMake(39.5019, -77.7859);
    points[64] = CLLocationCoordinate2DMake(39.5062, -77.8436);
    points[65] = CLLocationCoordinate2DMake(39.5210, -77.8217);
    points[66] = CLLocationCoordinate2DMake(39.5337, -77.8354);
    points[67] = CLLocationCoordinate2DMake(39.5231, -77.8656);
    points[68] = CLLocationCoordinate2DMake(39.5591, -77.8848);
    points[69] = CLLocationCoordinate2DMake(39.6015, -77.8821);
    points[70] = CLLocationCoordinate2DMake(39.6078, -77.9974);
    points[71] = CLLocationCoordinate2DMake(39.6247, -78.0222);
    points[72] = CLLocationCoordinate2DMake(39.6924, -78.1430);
    points[73] = CLLocationCoordinate2DMake(39.6945, -78.1924);
    points[74] = CLLocationCoordinate2DMake(39.6839, -78.2062);
    points[75] = CLLocationCoordinate2DMake(39.6839, -78.2419);
    points[76] = CLLocationCoordinate2DMake(39.6586, -78.2281);
    points[77] = CLLocationCoordinate2DMake(39.6226, -78.2776);
    points[78] = CLLocationCoordinate2DMake(39.6438, -78.3517);
    points[79] = CLLocationCoordinate2DMake(39.6120, -78.3765);
    points[80] = CLLocationCoordinate2DMake(39.6036, -78.4067);
    points[81] = CLLocationCoordinate2DMake(39.5824, -78.4177);
    points[82] = CLLocationCoordinate2DMake(39.5750, -78.4245);
    points[83] = CLLocationCoordinate2DMake(39.5464, -78.4232);
    points[84] = CLLocationCoordinate2DMake(39.5146, -78.4698);
    points[85] = CLLocationCoordinate2DMake(39.5189, -78.5687);
    points[86] = CLLocationCoordinate2DMake(39.5337, -78.6676);
    points[87] = CLLocationCoordinate2DMake(39.5888, -78.7390);
    points[88] = CLLocationCoordinate2DMake(39.6015, -78.7720);
    points[89] = CLLocationCoordinate2DMake(39.6184, -78.7363);
    points[90] = CLLocationCoordinate2DMake(39.6438, -78.7775);
    points[91] = CLLocationCoordinate2DMake(39.6036, -78.7912);
    points[92] = CLLocationCoordinate2DMake(39.6036, -78.8187);
    points[93] = CLLocationCoordinate2DMake(39.5549, -78.8571);
    points[94] = CLLocationCoordinate2DMake(39.4913, -78.9203);
    points[95] = CLLocationCoordinate2DMake(39.4426, -78.9725);
    points[96] = CLLocationCoordinate2DMake(39.4834, -79.0542);
    points[97] = CLLocationCoordinate2DMake(39.4738, -79.0604);
    points[98] = CLLocationCoordinate2DMake(39.4553, -79.1043);
    points[99] = CLLocationCoordinate2DMake(39.3853, -79.1936);
    points[100] = CLLocationCoordinate2DMake(39.3449, -79.2705);
    points[101] = CLLocationCoordinate2DMake(39.3014, -79.3282);
    points[102] = CLLocationCoordinate2DMake(39.2535, -79.4044);
    points[103] = CLLocationCoordinate2DMake(39.2073, -79.4696);
    points[104] = CLLocationCoordinate2DMake(39.2051, -79.4861);
    points[105] = CLLocationCoordinate2DMake(39.2546, -79.4861);
    points[106] = CLLocationCoordinate2DMake(39.3444, -79.4854);
    points[107] = CLLocationCoordinate2DMake(39.3454, -79.4840);
    points[108] = CLLocationCoordinate2DMake(39.5316, -79.4833);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:109];
    
    return poly;
}


- (MKPolygon *)polygonForMaine
{
    CLLocationCoordinate2D points[61];
    
    points[0] = CLLocationCoordinate2DMake(45.3425, -71.0129);
    points[1] = CLLocationCoordinate2DMake(45.3328, -70.9525);
    points[2] = CLLocationCoordinate2DMake(45.2294, -70.8618);
    points[3] = CLLocationCoordinate2DMake(45.3917, -70.8247);
    points[4] = CLLocationCoordinate2DMake(45.4274, -70.7808);
    points[5] = CLLocationCoordinate2DMake(45.3830, -70.6380);
    points[6] = CLLocationCoordinate2DMake(45.5092, -70.7190);
    points[7] = CLLocationCoordinate2DMake(45.6544, -70.5721);
    points[8] = CLLocationCoordinate2DMake(45.7292, -70.3894);
    points[9] = CLLocationCoordinate2DMake(45.7924, -70.4169);
    points[10] = CLLocationCoordinate2DMake(45.9368, -70.2493);
    points[11] = CLLocationCoordinate2DMake(45.9597, -70.3098);
    points[12] = CLLocationCoordinate2DMake(46.0923, -70.2946);
    points[13] = CLLocationCoordinate2DMake(46.0989, -70.2589);
    points[14] = CLLocationCoordinate2DMake(46.1342, -70.2466);
    points[15] = CLLocationCoordinate2DMake(46.1903, -70.2905);
    points[16] = CLLocationCoordinate2DMake(46.2710, -70.2466);
    points[17] = CLLocationCoordinate2DMake(46.3270, -70.2040);
    points[18] = CLLocationCoordinate2DMake(46.4151, -70.0571);
    points[19] = CLLocationCoordinate2DMake(46.6956, -69.9994);
    points[20] = CLLocationCoordinate2DMake(47.4550, -69.2303);
    points[21] = CLLocationCoordinate2DMake(47.4132, -69.0381);
    points[22] = CLLocationCoordinate2DMake(47.2578, -69.0504);
    points[23] = CLLocationCoordinate2DMake(47.1748, -68.8843);
    points[24] = CLLocationCoordinate2DMake(47.2643, -68.6206);
    points[25] = CLLocationCoordinate2DMake(47.3546, -68.3350);
    points[26] = CLLocationCoordinate2DMake(47.3165, -68.1564);
    points[27] = CLLocationCoordinate2DMake(47.1038, -67.8804);
    points[28] = CLLocationCoordinate2DMake(47.0664, -67.7898);
    points[29] = CLLocationCoordinate2DMake(45.9359, -67.7802);
    points[30] = CLLocationCoordinate2DMake(45.9177, -67.7527);
    points[31] = CLLocationCoordinate2DMake(45.7599, -67.8090);
    points[32] = CLLocationCoordinate2DMake(45.6208, -67.6524);
    points[33] = CLLocationCoordinate2DMake(45.5987, -67.4533);
    points[34] = CLLocationCoordinate2DMake(45.5044, -67.4176);
    points[35] = CLLocationCoordinate2DMake(45.4823, -67.5014);
    points[36] = CLLocationCoordinate2DMake(45.3714, -67.4231);
    points[37] = CLLocationCoordinate2DMake(45.2768, -67.4863);
    points[38] = CLLocationCoordinate2DMake(45.1297, -67.3434);
    points[39] = CLLocationCoordinate2DMake(45.1830, -67.2487);
    points[40] = CLLocationCoordinate2DMake(45.1230, -67.1223);
    points[41] = CLLocationCoordinate2DMake(44.8315, -66.9672);
    points[42] = CLLocationCoordinate2DMake(44.7409, -66.8628);
    points[43] = CLLocationCoordinate2DMake(44.4945, -67.3105);
    points[44] = CLLocationCoordinate2DMake(44.3268, -67.9051);
    points[45] = CLLocationCoordinate2DMake(43.8702, -68.6673);
    points[46] = CLLocationCoordinate2DMake(43.7274, -68.8431);
    points[47] = CLLocationCoordinate2DMake(43.6639, -69.7137);
    points[48] = CLLocationCoordinate2DMake(43.5625, -70.0818);
    points[49] = CLLocationCoordinate2DMake(42.9222, -70.5583);
    points[50] = CLLocationCoordinate2DMake(43.0498, -70.6970);
    points[51] = CLLocationCoordinate2DMake(43.1000, -70.7671);
    points[52] = CLLocationCoordinate2DMake(43.1411, -70.8261);
    points[53] = CLLocationCoordinate2DMake(43.2272, -70.8083);
    points[54] = CLLocationCoordinate2DMake(43.2942, -70.9030);
    points[55] = CLLocationCoordinate2DMake(43.3621, -70.9813);
    points[56] = CLLocationCoordinate2DMake(43.5704, -70.9731);
    points[57] = CLLocationCoordinate2DMake(43.7364, -70.9840);
    points[58] = CLLocationCoordinate2DMake(44.3592, -71.0143);
    points[59] = CLLocationCoordinate2DMake(44.9230, -71.0527);
    points[60] = CLLocationCoordinate2DMake(45.3058, -71.0843);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:61];
    
    return poly;
}


- (MKPolygon *)polygonForMichigan
{
    CLLocationCoordinate2D points[116];
    
    points[0] = CLLocationCoordinate2DMake(48.3033, -88.3713);
    points[1] = CLLocationCoordinate2DMake(48.0101, -87.6050);
    points[2] = CLLocationCoordinate2DMake(46.8902, -84.8584);
    points[3] = CLLocationCoordinate2DMake(46.6362, -84.7650);
    points[4] = CLLocationCoordinate2DMake(46.4606, -84.5563);
    points[5] = CLLocationCoordinate2DMake(46.4525, -84.4780);
    points[6] = CLLocationCoordinate2DMake(46.4894, -84.4450);
    points[7] = CLLocationCoordinate2DMake(46.5008, -84.4203);
    points[8] = CLLocationCoordinate2DMake(46.4989, -84.3956);
    points[9] = CLLocationCoordinate2DMake(46.5093, -84.3750);
    points[10] = CLLocationCoordinate2DMake(46.5069, -84.3386);
    points[11] = CLLocationCoordinate2DMake(46.4927, -84.2905);
    points[12] = CLLocationCoordinate2DMake(46.4951, -84.2651);
    points[13] = CLLocationCoordinate2DMake(46.5343, -84.2253);
    points[14] = CLLocationCoordinate2DMake(46.5404, -84.1951);
    points[15] = CLLocationCoordinate2DMake(46.5272, -84.1779);
    points[16] = CLLocationCoordinate2DMake(46.5348, -84.1347);
    points[17] = CLLocationCoordinate2DMake(46.5041, -84.1113);
    points[18] = CLLocationCoordinate2DMake(46.4189, -84.1457);
    points[19] = CLLocationCoordinate2DMake(46.3720, -84.1395);
    points[20] = CLLocationCoordinate2DMake(46.3218, -84.1058);
    points[21] = CLLocationCoordinate2DMake(46.3147, -84.1203);
    points[22] = CLLocationCoordinate2DMake(46.2672, -84.1148);
    points[23] = CLLocationCoordinate2DMake(46.2563, -84.0969);
    points[24] = CLLocationCoordinate2DMake(46.2411, -84.1093);
    points[25] = CLLocationCoordinate2DMake(46.2098, -84.0859);
    points[26] = CLLocationCoordinate2DMake(46.1879, -84.0777);
    points[27] = CLLocationCoordinate2DMake(46.1508, -84.0097);
    points[28] = CLLocationCoordinate2DMake(46.1180, -84.0070);
    points[29] = CLLocationCoordinate2DMake(46.1018, -83.9761);
    points[30] = CLLocationCoordinate2DMake(46.0570, -83.9555);
    points[31] = CLLocationCoordinate2DMake(46.0604, -83.9040);
    points[32] = CLLocationCoordinate2DMake(46.1185, -83.8264);
    points[33] = CLLocationCoordinate2DMake(46.1028, -83.7598);
    points[34] = CLLocationCoordinate2DMake(46.1218, -83.6547);
    points[35] = CLLocationCoordinate2DMake(46.1056, -83.5723);
    points[36] = CLLocationCoordinate2DMake(45.9993, -83.4343);
    points[37] = CLLocationCoordinate2DMake(45.8211, -83.5977);
    points[38] = CLLocationCoordinate2DMake(45.3396, -82.5197);
    points[39] = CLLocationCoordinate2DMake(43.5918, -82.1221);
    points[40] = CLLocationCoordinate2DMake(43.0112, -82.4119);
    points[41] = CLLocationCoordinate2DMake(42.9956, -82.4249);
    points[42] = CLLocationCoordinate2DMake(42.9579, -82.4236);
    points[43] = CLLocationCoordinate2DMake(42.9021, -82.4648);
    points[44] = CLLocationCoordinate2DMake(42.8543, -82.4689);
    points[45] = CLLocationCoordinate2DMake(42.8100, -82.4826);
    points[46] = CLLocationCoordinate2DMake(42.7863, -82.4723);
    points[47] = CLLocationCoordinate2DMake(42.7339, -82.4847);
    points[48] = CLLocationCoordinate2DMake(42.6855, -82.5032);
    points[49] = CLLocationCoordinate2DMake(42.6380, -82.5108);
    points[50] = CLLocationCoordinate2DMake(42.6036, -82.5307);
    points[51] = CLLocationCoordinate2DMake(42.5672, -82.5774);
    points[52] = CLLocationCoordinate2DMake(42.5490, -82.5993);
    points[53] = CLLocationCoordinate2DMake(42.5521, -82.6501);
    points[54] = CLLocationCoordinate2DMake(42.5354, -82.6680);
    points[55] = CLLocationCoordinate2DMake(42.4746, -82.7257);
    points[56] = CLLocationCoordinate2DMake(42.4726, -82.7250);
    points[57] = CLLocationCoordinate2DMake(42.3738, -82.8280);
    points[58] = CLLocationCoordinate2DMake(42.3469, -82.9440);
    points[59] = CLLocationCoordinate2DMake(42.3382, -82.9550);
    points[60] = CLLocationCoordinate2DMake(42.3098, -83.0779);
    points[61] = CLLocationCoordinate2DMake(42.2392, -83.1294);
    points[62] = CLLocationCoordinate2DMake(42.1741, -83.1342);
    points[63] = CLLocationCoordinate2DMake(42.1267, -83.1212);
    points[64] = CLLocationCoordinate2DMake(42.0411, -83.1493);
    points[65] = CLLocationCoordinate2DMake(41.9600, -83.1116);
    points[66] = CLLocationCoordinate2DMake(41.7344, -83.4164);
    points[67] = CLLocationCoordinate2DMake(41.7211, -83.8724);
    points[68] = CLLocationCoordinate2DMake(41.7057, -84.3736);
    points[69] = CLLocationCoordinate2DMake(41.6965, -84.8062);
    points[70] = CLLocationCoordinate2DMake(41.7611, -84.8076);
    points[71] = CLLocationCoordinate2DMake(41.7621, -87.2067);
    points[72] = CLLocationCoordinate2DMake(42.4934, -87.0241);
    points[73] = CLLocationCoordinate2DMake(43.3771, -87.1477);
    points[74] = CLLocationCoordinate2DMake(43.7056, -87.1216);
    points[75] = CLLocationCoordinate2DMake(43.9958, -87.0474);
    points[76] = CLLocationCoordinate2DMake(44.1674, -86.9939);
    points[77] = CLLocationCoordinate2DMake(44.4720, -86.8662);
    points[78] = CLLocationCoordinate2DMake(44.8841, -86.6849);
    points[79] = CLLocationCoordinate2DMake(45.0813, -86.5009);
    points[80] = CLLocationCoordinate2DMake(45.2353, -86.2495);
    points[81] = CLLocationCoordinate2DMake(45.4438, -86.7563);
    points[82] = CLLocationCoordinate2DMake(45.4438, -87.0996);
    points[83] = CLLocationCoordinate2DMake(45.3772, -87.1518);
    points[84] = CLLocationCoordinate2DMake(45.3502, -87.1710);
    points[85] = CLLocationCoordinate2DMake(45.2401, -87.3166);
    points[86] = CLLocationCoordinate2DMake(45.2024, -87.4059);
    points[87] = CLLocationCoordinate2DMake(45.0774, -87.4416);
    points[88] = CLLocationCoordinate2DMake(45.0910, -87.5912);
    points[89] = CLLocationCoordinate2DMake(45.1036, -87.6407);
    points[90] = CLLocationCoordinate2DMake(45.2207, -87.6970);
    points[91] = CLLocationCoordinate2DMake(45.3367, -87.6476);
    points[92] = CLLocationCoordinate2DMake(45.3878, -87.6984);
    points[93] = CLLocationCoordinate2DMake(45.3425, -87.8494);
    points[94] = CLLocationCoordinate2DMake(45.5025, -87.7959);
    points[95] = CLLocationCoordinate2DMake(45.6726, -87.7890);
    points[96] = CLLocationCoordinate2DMake(45.7570, -87.9318);
    points[97] = CLLocationCoordinate2DMake(45.7953, -87.9922);
    points[98] = CLLocationCoordinate2DMake(45.8058, -88.1186);
    points[99] = CLLocationCoordinate2DMake(45.8585, -88.0870);
    points[100] = CLLocationCoordinate2DMake(45.9531, -88.1955);
    points[101] = CLLocationCoordinate2DMake(45.9722, -88.3438);
    points[102] = CLLocationCoordinate2DMake(45.9836, -88.3891);
    points[103] = CLLocationCoordinate2DMake(46.0113, -88.5457);
    points[104] = CLLocationCoordinate2DMake(45.9970, -88.7022);
    points[105] = CLLocationCoordinate2DMake(46.0227, -88.8135);
    points[106] = CLLocationCoordinate2DMake(46.0418, -88.8547);
    points[107] = CLLocationCoordinate2DMake(46.1408, -89.0936);
    points[108] = CLLocationCoordinate2DMake(46.3384, -90.1222);
    points[109] = CLLocationCoordinate2DMake(46.5692, -90.4175);
    points[110] = CLLocationCoordinate2DMake(46.9034, -90.2019);
    points[111] = CLLocationCoordinate2DMake(47.2913, -89.9547);
    points[112] = CLLocationCoordinate2DMake(48.0129, -89.4946);
    points[113] = CLLocationCoordinate2DMake(47.9743, -89.3381);
    points[114] = CLLocationCoordinate2DMake(48.2448, -88.6761);
    points[115] = CLLocationCoordinate2DMake(48.3042, -88.3726);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:116];
    
    return poly;
}


- (MKPolygon *)polygonForMinnesota
{
    CLLocationCoordinate2D points[90];
    
    points[0] = CLLocationCoordinate2DMake(49.0000, -97.2304);
    points[1] = CLLocationCoordinate2DMake(48.9991, -95.1553);
    points[2] = CLLocationCoordinate2DMake(49.3877, -95.1553);
    points[3] = CLLocationCoordinate2DMake(49.3681, -95.1196);
    points[4] = CLLocationCoordinate2DMake(49.3538, -95.0400);
    points[5] = CLLocationCoordinate2DMake(49.3815, -94.9631);
    points[6] = CLLocationCoordinate2DMake(49.3189, -94.8175);
    points[7] = CLLocationCoordinate2DMake(49.1889, -94.7955);
    points[8] = CLLocationCoordinate2DMake(49.0955, -94.7488);
    points[9] = CLLocationCoordinate2DMake(48.8756, -94.6788);
    points[10] = CLLocationCoordinate2DMake(48.7861, -94.6925);
    points[11] = CLLocationCoordinate2DMake(48.6982, -94.4467);
    points[12] = CLLocationCoordinate2DMake(48.7046, -94.2792);
    points[13] = CLLocationCoordinate2DMake(48.6547, -94.2531);
    points[14] = CLLocationCoordinate2DMake(48.6284, -93.8356);
    points[15] = CLLocationCoordinate2DMake(48.5166, -93.8013);
    points[16] = CLLocationCoordinate2DMake(48.5439, -93.4621);
    points[17] = CLLocationCoordinate2DMake(48.5884, -93.4648);
    points[18] = CLLocationCoordinate2DMake(48.6393, -93.2066);
    points[19] = CLLocationCoordinate2DMake(48.5403, -92.6395);
    points[20] = CLLocationCoordinate2DMake(48.4984, -92.6340);
    points[21] = CLLocationCoordinate2DMake(48.4611, -92.7122);
    points[22] = CLLocationCoordinate2DMake(48.4474, -92.5104);
    points[23] = CLLocationCoordinate2DMake(48.3854, -92.4609);
    points[24] = CLLocationCoordinate2DMake(48.2228, -92.3717);
    points[25] = CLLocationCoordinate2DMake(48.2475, -92.2742);
    points[26] = CLLocationCoordinate2DMake(48.3307, -92.2975);
    points[27] = CLLocationCoordinate2DMake(48.3599, -92.1561);
    points[28] = CLLocationCoordinate2DMake(48.3544, -92.0531);
    points[29] = CLLocationCoordinate2DMake(48.3188, -92.0078);
    points[30] = CLLocationCoordinate2DMake(48.2494, -91.9844);
    points[31] = CLLocationCoordinate2DMake(48.1963, -91.7166);
    points[32] = CLLocationCoordinate2DMake(48.1166, -91.7070);
    points[33] = CLLocationCoordinate2DMake(48.0505, -91.5738);
    points[34] = CLLocationCoordinate2DMake(48.0726, -91.3252);
    points[35] = CLLocationCoordinate2DMake(48.2174, -90.9792);
    points[36] = CLLocationCoordinate2DMake(48.2402, -90.8405);
    points[37] = CLLocationCoordinate2DMake(48.1588, -90.7759);
    points[38] = CLLocationCoordinate2DMake(48.0928, -90.7471);
    points[39] = CLLocationCoordinate2DMake(48.1175, -90.5644);
    points[40] = CLLocationCoordinate2DMake(48.1074, -90.4834);
    points[41] = CLLocationCoordinate2DMake(48.0955, -90.3502);
    points[42] = CLLocationCoordinate2DMake(48.1074, -90.1758);
    points[43] = CLLocationCoordinate2DMake(48.0827, -90.0261);
    points[44] = CLLocationCoordinate2DMake(48.0285, -89.9931);
    points[45] = CLLocationCoordinate2DMake(48.0193, -89.7583);
    points[46] = CLLocationCoordinate2DMake(48.0120, -89.4919);
    points[47] = CLLocationCoordinate2DMake(47.2885, -89.9615);
    points[48] = CLLocationCoordinate2DMake(47.3072, -90.6564);
    points[49] = CLLocationCoordinate2DMake(46.5957, -92.2879);
    points[50] = CLLocationCoordinate2DMake(46.0789, -92.2934);
    points[51] = CLLocationCoordinate2DMake(46.0151, -92.3566);
    points[52] = CLLocationCoordinate2DMake(45.9760, -92.5159);
    points[53] = CLLocationCoordinate2DMake(45.8307, -92.7356);
    points[54] = CLLocationCoordinate2DMake(45.6083, -92.8482);
    points[55] = CLLocationCoordinate2DMake(45.4505, -92.6532);
    points[56] = CLLocationCoordinate2DMake(45.3135, -92.7081);
    points[57] = CLLocationCoordinate2DMake(44.7877, -92.7658);
    points[58] = CLLocationCoordinate2DMake(44.6501, -92.6367);
    points[59] = CLLocationCoordinate2DMake(44.5513, -92.3360);
    points[60] = CLLocationCoordinate2DMake(44.4357, -92.2083);
    points[61] = CLLocationCoordinate2DMake(44.3710, -91.9556);
    points[62] = CLLocationCoordinate2DMake(44.2806, -91.8951);
    points[63] = CLLocationCoordinate2DMake(44.1113, -91.7084);
    points[64] = CLLocationCoordinate2DMake(43.9651, -91.4914);
    points[65] = CLLocationCoordinate2DMake(43.8226, -91.3101);
    points[66] = CLLocationCoordinate2DMake(43.5017, -91.2195);
    points[67] = CLLocationCoordinate2DMake(43.5008, -96.4517);
    points[68] = CLLocationCoordinate2DMake(43.5008, -96.4531);
    points[69] = CLLocationCoordinate2DMake(45.2961, -96.4558);
    points[70] = CLLocationCoordinate2DMake(45.3676, -96.5918);
    points[71] = CLLocationCoordinate2DMake(45.4601, -96.7456);
    points[72] = CLLocationCoordinate2DMake(45.6169, -96.8486);
    points[73] = CLLocationCoordinate2DMake(45.8173, -96.5891);
    points[74] = CLLocationCoordinate2DMake(45.9340, -96.5671);
    points[75] = CLLocationCoordinate2DMake(46.0189, -96.5767);
    points[76] = CLLocationCoordinate2DMake(46.2786, -96.6028);
    points[77] = CLLocationCoordinate2DMake(46.5135, -96.7126);
    points[78] = CLLocationCoordinate2DMake(46.6702, -96.8005);
    points[79] = CLLocationCoordinate2DMake(46.9329, -96.7648);
    points[80] = CLLocationCoordinate2DMake(47.2345, -96.8335);
    points[81] = CLLocationCoordinate2DMake(47.5821, -96.8582);
    points[82] = CLLocationCoordinate2DMake(47.7098, -96.9434);
    points[83] = CLLocationCoordinate2DMake(47.9633, -97.0587);
    points[84] = CLLocationCoordinate2DMake(48.1578, -97.1397);
    points[85] = CLLocationCoordinate2DMake(48.2832, -97.1411);
    points[86] = CLLocationCoordinate2DMake(48.5539, -97.1645);
    points[87] = CLLocationCoordinate2DMake(48.6683, -97.1040);
    points[88] = CLLocationCoordinate2DMake(48.7806, -97.1576);
    points[89] = CLLocationCoordinate2DMake(48.8647, -97.1851);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:90];
    
    return poly;
}


- (MKPolygon *)polygonForMissouri
{
    CLLocationCoordinate2D points[72];
    
    points[0] = CLLocationCoordinate2DMake(40.6181, -91.7468);
    points[1] = CLLocationCoordinate2DMake(40.5597, -91.6809);
    points[2] = CLLocationCoordinate2DMake(40.5472, -91.6260);
    points[3] = CLLocationCoordinate2DMake(40.4658, -91.5463);
    points[4] = CLLocationCoordinate2DMake(40.3675, -91.4337);
    points[5] = CLLocationCoordinate2DMake(40.1663, -91.5161);
    points[6] = CLLocationCoordinate2DMake(39.9866, -91.4900);
    points[7] = CLLocationCoordinate2DMake(39.8634, -91.4447);
    points[8] = CLLocationCoordinate2DMake(39.7283, -91.3623);
    points[9] = CLLocationCoordinate2DMake(39.6861, -91.3074);
    points[10] = CLLocationCoordinate2DMake(39.5464, -91.1096);
    points[11] = CLLocationCoordinate2DMake(39.4022, -90.9558);
    points[12] = CLLocationCoordinate2DMake(39.2450, -90.7306);
    points[13] = CLLocationCoordinate2DMake(38.9893, -90.6812);
    points[14] = CLLocationCoordinate2DMake(38.8697, -90.5878);
    points[15] = CLLocationCoordinate2DMake(38.9722, -90.4504);
    points[16] = CLLocationCoordinate2DMake(38.8868, -90.1813);
    points[17] = CLLocationCoordinate2DMake(38.8269, -90.1154);
    points[18] = CLLocationCoordinate2DMake(38.7155, -90.1978);
    points[19] = CLLocationCoordinate2DMake(38.4149, -90.3186);
    points[20] = CLLocationCoordinate2DMake(38.2597, -90.3790);
    points[21] = CLLocationCoordinate2DMake(37.9572, -89.9341);
    points[22] = CLLocationCoordinate2DMake(37.6925, -89.5331);
    points[23] = CLLocationCoordinate2DMake(37.4007, -89.4287);
    points[24] = CLLocationCoordinate2DMake(37.2784, -89.5386);
    points[25] = CLLocationCoordinate2DMake(37.1734, -89.4452);
    points[26] = CLLocationCoordinate2DMake(37.0859, -89.3793);
    points[27] = CLLocationCoordinate2DMake(36.9938, -89.2859);
    points[28] = CLLocationCoordinate2DMake(37.0311, -89.1829);
    points[29] = CLLocationCoordinate2DMake(36.9839, -89.1403);
    points[30] = CLLocationCoordinate2DMake(36.9466, -89.1005);
    points[31] = CLLocationCoordinate2DMake(36.7884, -89.1788);
    points[32] = CLLocationCoordinate2DMake(36.6288, -89.2035);
    points[33] = CLLocationCoordinate2DMake(36.5449, -89.2516);
    points[34] = CLLocationCoordinate2DMake(36.6188, -89.3532);
    points[35] = CLLocationCoordinate2DMake(36.5538, -89.4397);
    points[36] = CLLocationCoordinate2DMake(36.4942, -89.5358);
    points[37] = CLLocationCoordinate2DMake(36.3406, -89.5180);
    points[38] = CLLocationCoordinate2DMake(36.3494, -89.5784);
    points[39] = CLLocationCoordinate2DMake(36.2996, -89.6210);
    points[40] = CLLocationCoordinate2DMake(36.2531, -89.5331);
    points[41] = CLLocationCoordinate2DMake(36.2343, -89.7006);
    points[42] = CLLocationCoordinate2DMake(36.1856, -89.6484);
    points[43] = CLLocationCoordinate2DMake(36.1279, -89.5894);
    points[44] = CLLocationCoordinate2DMake(36.0902, -89.6759);
    points[45] = CLLocationCoordinate2DMake(36.0009, -89.7068);
    points[46] = CLLocationCoordinate2DMake(36.0004, -89.7329);
    points[47] = CLLocationCoordinate2DMake(35.9958, -90.3735);
    points[48] = CLLocationCoordinate2DMake(36.1223, -90.2747);
    points[49] = CLLocationCoordinate2DMake(36.2886, -90.0934);
    points[50] = CLLocationCoordinate2DMake(36.3903, -90.0769);
    points[51] = CLLocationCoordinate2DMake(36.4213, -90.1538);
    points[52] = CLLocationCoordinate2DMake(36.5008, -90.1538);
    points[53] = CLLocationCoordinate2DMake(36.4994, -94.6179);
    points[54] = CLLocationCoordinate2DMake(38.9722, -94.6143);
    points[55] = CLLocationCoordinate2DMake(39.1982, -94.6143);
    points[56] = CLLocationCoordinate2DMake(39.1684, -94.7241);
    points[57] = CLLocationCoordinate2DMake(39.2790, -94.8834);
    points[58] = CLLocationCoordinate2DMake(39.5612, -95.1086);
    points[59] = CLLocationCoordinate2DMake(39.7283, -94.8834);
    points[60] = CLLocationCoordinate2DMake(39.8296, -94.8944);
    points[61] = CLLocationCoordinate2DMake(39.8845, -94.9384);
    points[62] = CLLocationCoordinate2DMake(39.8971, -95.0153);
    points[63] = CLLocationCoordinate2DMake(39.8718, -95.0922);
    points[64] = CLLocationCoordinate2DMake(39.9992, -95.3091);
    points[65] = CLLocationCoordinate2DMake(40.2397, -95.4808);
    points[66] = CLLocationCoordinate2DMake(40.3130, -95.6470);
    points[67] = CLLocationCoordinate2DMake(40.4302, -95.6689);
    points[68] = CLLocationCoordinate2DMake(40.5837, -95.7610);
    points[69] = CLLocationCoordinate2DMake(40.5795, -94.3135);
    points[70] = CLLocationCoordinate2DMake(40.5962, -92.5818);
    points[71] = CLLocationCoordinate2DMake(40.6140, -91.7358);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:72];
    
    return poly;
}


- (MKPolygon *)polygonForMississippi
{
    CLLocationCoordinate2D points[82];
    
    points[0] = CLLocationCoordinate2DMake(34.9955, -90.3090);
    points[1] = CLLocationCoordinate2DMake(34.9955, -88.1998);
    points[2] = CLLocationCoordinate2DMake(34.9107, -88.1461);
    points[3] = CLLocationCoordinate2DMake(34.8938, -88.1021);
    points[4] = CLLocationCoordinate2DMake(31.8939, -88.4743);
    points[5] = CLLocationCoordinate2DMake(30.1546, -88.3864);
    points[6] = CLLocationCoordinate2DMake(30.1539, -89.0744);
    points[7] = CLLocationCoordinate2DMake(30.2118, -89.1832);
    points[8] = CLLocationCoordinate2DMake(30.1813, -89.2644);
    points[9] = CLLocationCoordinate2DMake(30.1580, -89.5066);
    points[10] = CLLocationCoordinate2DMake(30.1796, -89.5757);
    points[11] = CLLocationCoordinate2DMake(30.3326, -89.6457);
    points[12] = CLLocationCoordinate2DMake(30.5232, -89.7748);
    points[13] = CLLocationCoordinate2DMake(30.6663, -89.8531);
    points[14] = CLLocationCoordinate2DMake(31.0015, -89.7360);
    points[15] = CLLocationCoordinate2DMake(30.9992, -91.6359);
    points[16] = CLLocationCoordinate2DMake(31.0341, -91.5601);
    points[17] = CLLocationCoordinate2DMake(31.1106, -91.6273);
    points[18] = CLLocationCoordinate2DMake(31.1658, -91.5916);
    points[19] = CLLocationCoordinate2DMake(31.2304, -91.6589);
    points[20] = CLLocationCoordinate2DMake(31.2656, -91.6452);
    points[21] = CLLocationCoordinate2DMake(31.2609, -91.5436);
    points[22] = CLLocationCoordinate2DMake(31.3724, -91.5271);
    points[23] = CLLocationCoordinate2DMake(31.4099, -91.5161);
    points[24] = CLLocationCoordinate2DMake(31.5071, -91.5120);
    points[25] = CLLocationCoordinate2DMake(31.5692, -91.4502);
    points[26] = CLLocationCoordinate2DMake(31.6230, -91.5147);
    points[27] = CLLocationCoordinate2DMake(31.6253, -91.3966);
    points[28] = CLLocationCoordinate2DMake(31.7936, -91.3513);
    points[29] = CLLocationCoordinate2DMake(31.8589, -91.2744);
    points[30] = CLLocationCoordinate2DMake(31.9755, -91.1673);
    points[31] = CLLocationCoordinate2DMake(32.0267, -91.0767);
    points[32] = CLLocationCoordinate2DMake(32.1198, -91.0767);
    points[33] = CLLocationCoordinate2DMake(32.1942, -91.0437);
    points[34] = CLLocationCoordinate2DMake(32.2221, -91.0107);
    points[35] = CLLocationCoordinate2DMake(32.3150, -90.9132);
    points[36] = CLLocationCoordinate2DMake(32.3742, -91.0313);
    points[37] = CLLocationCoordinate2DMake(32.4263, -91.0217);
    points[38] = CLLocationCoordinate2DMake(32.4634, -91.0986);
    points[39] = CLLocationCoordinate2DMake(32.6070, -91.0080);
    points[40] = CLLocationCoordinate2DMake(32.5746, -91.1096);
    points[41] = CLLocationCoordinate2DMake(32.6394, -91.1536);
    points[42] = CLLocationCoordinate2DMake(32.7226, -91.1426);
    points[43] = CLLocationCoordinate2DMake(32.7873, -91.1426);
    points[44] = CLLocationCoordinate2DMake(32.8519, -91.1536);
    points[45] = CLLocationCoordinate2DMake(32.8796, -91.1206);
    points[46] = CLLocationCoordinate2DMake(32.9257, -91.2195);
    points[47] = CLLocationCoordinate2DMake(32.9995, -91.2085);
    points[48] = CLLocationCoordinate2DMake(33.0036, -91.1659);
    points[49] = CLLocationCoordinate2DMake(33.1192, -91.2016);
    points[50] = CLLocationCoordinate2DMake(33.1835, -91.1041);
    points[51] = CLLocationCoordinate2DMake(33.3397, -91.1536);
    points[52] = CLLocationCoordinate2DMake(33.4223, -91.1646);
    points[53] = CLLocationCoordinate2DMake(33.4337, -91.2291);
    points[54] = CLLocationCoordinate2DMake(33.5414, -91.2524);
    points[55] = CLLocationCoordinate2DMake(33.6135, -91.1838);
    points[56] = CLLocationCoordinate2DMake(33.6878, -91.2524);
    points[57] = CLLocationCoordinate2DMake(33.6969, -91.1261);
    points[58] = CLLocationCoordinate2DMake(33.7883, -91.1426);
    points[59] = CLLocationCoordinate2DMake(33.7700, -91.0437);
    points[60] = CLLocationCoordinate2DMake(33.8339, -91.0327);
    points[61] = CLLocationCoordinate2DMake(33.8795, -91.0657);
    points[62] = CLLocationCoordinate2DMake(33.9434, -91.0876);
    points[63] = CLLocationCoordinate2DMake(33.9889, -90.9998);
    points[64] = CLLocationCoordinate2DMake(34.0253, -90.9229);
    points[65] = CLLocationCoordinate2DMake(34.0891, -90.9009);
    points[66] = CLLocationCoordinate2DMake(34.1345, -90.9668);
    points[67] = CLLocationCoordinate2DMake(34.1709, -90.9119);
    points[68] = CLLocationCoordinate2DMake(34.1345, -90.8501);
    points[69] = CLLocationCoordinate2DMake(34.2277, -90.9338);
    points[70] = CLLocationCoordinate2DMake(34.2833, -90.8267);
    points[71] = CLLocationCoordinate2DMake(34.3434, -90.6921);
    points[72] = CLLocationCoordinate2DMake(34.3774, -90.6509);
    points[73] = CLLocationCoordinate2DMake(34.3978, -90.6152);
    points[74] = CLLocationCoordinate2DMake(34.4432, -90.5589);
    points[75] = CLLocationCoordinate2DMake(34.5179, -90.5740);
    points[76] = CLLocationCoordinate2DMake(34.5880, -90.5823);
    points[77] = CLLocationCoordinate2DMake(34.7506, -90.5356);
    points[78] = CLLocationCoordinate2DMake(34.7913, -90.5136);
    points[79] = CLLocationCoordinate2DMake(34.8780, -90.4532);
    points[80] = CLLocationCoordinate2DMake(34.9329, -90.2441);
    points[81] = CLLocationCoordinate2DMake(34.8702, -90.2911);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:82];
    
    return poly;
}


- (MKPolygon *)polygonForMontana
{
    CLLocationCoordinate2D points[58];
    
    points[0] = CLLocationCoordinate2DMake(49.0007, -116.0492);
    points[1] = CLLocationCoordinate2DMake(48.9998, -104.0488);
    points[2] = CLLocationCoordinate2DMake(45.9445, -104.0446);
    points[3] = CLLocationCoordinate2DMake(44.9976, -104.0398);
    points[4] = CLLocationCoordinate2DMake(44.9971, -104.0577);
    points[5] = CLLocationCoordinate2DMake(45.0009, -105.9130);
    points[6] = CLLocationCoordinate2DMake(44.9936, -105.9281);
    points[7] = CLLocationCoordinate2DMake(45.0010, -111.0546);
    points[8] = CLLocationCoordinate2DMake(44.4742, -111.0491);
    points[9] = CLLocationCoordinate2DMake(44.7311, -111.3684);
    points[10] = CLLocationCoordinate2DMake(44.6198, -111.5071);
    points[11] = CLLocationCoordinate2DMake(44.5386, -111.4673);
    points[12] = CLLocationCoordinate2DMake(44.5151, -111.8285);
    points[13] = CLLocationCoordinate2DMake(44.5592, -111.8848);
    points[14] = CLLocationCoordinate2DMake(44.5229, -112.1127);
    points[15] = CLLocationCoordinate2DMake(44.5367, -112.3270);
    points[16] = CLLocationCoordinate2DMake(44.4475, -112.3901);
    points[17] = CLLocationCoordinate2DMake(44.4896, -112.7293);
    points[18] = CLLocationCoordinate2DMake(44.4181, -112.8296);
    points[19] = CLLocationCoordinate2DMake(44.3563, -112.8529);
    points[20] = CLLocationCoordinate2DMake(44.4857, -113.0205);
    points[21] = CLLocationCoordinate2DMake(44.5905, -113.0713);
    points[22] = CLLocationCoordinate2DMake(44.7389, -113.1152);
    points[23] = CLLocationCoordinate2DMake(44.8091, -113.2471);
    points[24] = CLLocationCoordinate2DMake(44.7887, -113.3459);
    points[25] = CLLocationCoordinate2DMake(44.9386, -113.4970);
    points[26] = CLLocationCoordinate2DMake(45.0269, -113.4229);
    points[27] = CLLocationCoordinate2DMake(45.2749, -113.7085);
    points[28] = CLLocationCoordinate2DMake(45.4447, -113.7964);
    points[29] = CLLocationCoordinate2DMake(45.6140, -113.8403);
    points[30] = CLLocationCoordinate2DMake(45.6908, -113.9722);
    points[31] = CLLocationCoordinate2DMake(45.5631, -114.1315);
    points[32] = CLLocationCoordinate2DMake(45.5525, -114.2358);
    points[33] = CLLocationCoordinate2DMake(45.4592, -114.3347);
    points[34] = CLLocationCoordinate2DMake(45.5439, -114.4652);
    points[35] = CLLocationCoordinate2DMake(45.5583, -114.5668);
    points[36] = CLLocationCoordinate2DMake(45.6755, -114.5215);
    points[37] = CLLocationCoordinate2DMake(45.7733, -114.5641);
    points[38] = CLLocationCoordinate2DMake(45.8613, -114.4391);
    points[39] = CLLocationCoordinate2DMake(45.9989, -114.4817);
    points[40] = CLLocationCoordinate2DMake(46.1237, -114.5132);
    points[41] = CLLocationCoordinate2DMake(46.2577, -114.4652);
    points[42] = CLLocationCoordinate2DMake(46.3441, -114.4171);
    points[43] = CLLocationCoordinate2DMake(46.4530, -114.3896);
    points[44] = CLLocationCoordinate2DMake(46.5069, -114.3484);
    points[45] = CLLocationCoordinate2DMake(46.6504, -114.3279);
    points[46] = CLLocationCoordinate2DMake(46.6334, -114.4652);
    points[47] = CLLocationCoordinate2DMake(46.6362, -114.5929);
    points[48] = CLLocationCoordinate2DMake(46.7003, -114.7659);
    points[49] = CLLocationCoordinate2DMake(46.8423, -114.9307);
    points[50] = CLLocationCoordinate2DMake(47.0402, -115.1147);
    points[51] = CLLocationCoordinate2DMake(47.1888, -115.2933);
    points[52] = CLLocationCoordinate2DMake(47.2569, -115.3290);
    points[53] = CLLocationCoordinate2DMake(47.3025, -115.5267);
    points[54] = CLLocationCoordinate2DMake(47.4253, -115.7547);
    points[55] = CLLocationCoordinate2DMake(47.5487, -115.7533);
    points[56] = CLLocationCoordinate2DMake(47.5793, -115.6956);
    points[57] = CLLocationCoordinate2DMake(47.9771, -116.0458);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:58];
    
    return poly;
}


- (MKPolygon *)polygonForNorth_Carolina
{
    CLLocationCoordinate2D points[60];
    
    points[0] = CLLocationCoordinate2DMake(36.5882, -81.6773);
    points[1] = CLLocationCoordinate2DMake(36.5659, -80.7234);
    points[2] = CLLocationCoordinate2DMake(36.5438, -80.2977);
    points[3] = CLLocationCoordinate2DMake(36.5449, -79.6729);
    points[4] = CLLocationCoordinate2DMake(36.5449, -77.2559);
    points[5] = CLLocationCoordinate2DMake(36.5505, -75.7562);
    points[6] = CLLocationCoordinate2DMake(36.3129, -75.7068);
    points[7] = CLLocationCoordinate2DMake(35.7131, -75.4129);
    points[8] = CLLocationCoordinate2DMake(35.2041, -75.4720);
    points[9] = CLLocationCoordinate2DMake(34.9794, -76.0748);
    points[10] = CLLocationCoordinate2DMake(34.5258, -76.4951);
    points[11] = CLLocationCoordinate2DMake(34.5880, -76.8109);
    points[12] = CLLocationCoordinate2DMake(34.5314, -77.1378);
    points[13] = CLLocationCoordinate2DMake(34.3910, -77.4481);
    points[14] = CLLocationCoordinate2DMake(34.0481, -77.7983);
    points[15] = CLLocationCoordinate2DMake(33.7666, -77.9260);
    points[16] = CLLocationCoordinate2DMake(33.7963, -78.4863);
    points[17] = CLLocationCoordinate2DMake(33.7963, -78.4850);
    points[18] = CLLocationCoordinate2DMake(34.8037, -79.6742);
    points[19] = CLLocationCoordinate2DMake(34.8206, -80.8003);
    points[20] = CLLocationCoordinate2DMake(34.9377, -80.7880);
    points[21] = CLLocationCoordinate2DMake(35.1019, -80.9377);
    points[22] = CLLocationCoordinate2DMake(35.0356, -81.0379);
    points[23] = CLLocationCoordinate2DMake(35.1457, -81.0324);
    points[24] = CLLocationCoordinate2DMake(35.1660, -81.3867);
    points[25] = CLLocationCoordinate2DMake(35.1985, -82.2739);
    points[26] = CLLocationCoordinate2DMake(35.2041, -82.3933);
    points[27] = CLLocationCoordinate2DMake(35.0637, -82.7765);
    points[28] = CLLocationCoordinate2DMake(35.0817, -82.7861);
    points[29] = CLLocationCoordinate2DMake(34.9996, -83.1088);
    points[30] = CLLocationCoordinate2DMake(34.9918, -83.6183);
    points[31] = CLLocationCoordinate2DMake(34.9884, -84.3201);
    points[32] = CLLocationCoordinate2DMake(35.2198, -84.2926);
    points[33] = CLLocationCoordinate2DMake(35.2624, -84.2294);
    points[34] = CLLocationCoordinate2DMake(35.2322, -84.1113);
    points[35] = CLLocationCoordinate2DMake(35.2905, -84.0276);
    points[36] = CLLocationCoordinate2DMake(35.4014, -84.0248);
    points[37] = CLLocationCoordinate2DMake(35.5065, -83.8847);
    points[38] = CLLocationCoordinate2DMake(35.5233, -83.8284);
    points[39] = CLLocationCoordinate2DMake(35.5501, -83.6938);
    points[40] = CLLocationCoordinate2DMake(35.5635, -83.4961);
    points[41] = CLLocationCoordinate2DMake(35.7131, -83.2393);
    points[42] = CLLocationCoordinate2DMake(35.7755, -83.0017);
    points[43] = CLLocationCoordinate2DMake(35.8623, -82.9042);
    points[44] = CLLocationCoordinate2DMake(35.9169, -82.8177);
    points[45] = CLLocationCoordinate2DMake(35.9925, -82.7751);
    points[46] = CLLocationCoordinate2DMake(36.0602, -82.6378);
    points[47] = CLLocationCoordinate2DMake(35.9702, -82.6076);
    points[48] = CLLocationCoordinate2DMake(35.9669, -82.5389);
    points[49] = CLLocationCoordinate2DMake(36.0702, -82.4167);
    points[50] = CLLocationCoordinate2DMake(36.1168, -82.3521);
    points[51] = CLLocationCoordinate2DMake(36.1323, -82.2450);
    points[52] = CLLocationCoordinate2DMake(36.1434, -82.1475);
    points[53] = CLLocationCoordinate2DMake(36.1024, -82.1255);
    points[54] = CLLocationCoordinate2DMake(36.1212, -82.0308);
    points[55] = CLLocationCoordinate2DMake(36.2974, -81.9072);
    points[56] = CLLocationCoordinate2DMake(36.3569, -81.7956);
    points[57] = CLLocationCoordinate2DMake(36.3359, -81.7077);
    points[58] = CLLocationCoordinate2DMake(36.4122, -81.7407);
    points[59] = CLLocationCoordinate2DMake(36.5882, -81.6773);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:60];
    
    return poly;
}


- (MKPolygon *)polygonForNorth_Dakota
{
    CLLocationCoordinate2D points[19];
    
    points[0] = CLLocationCoordinate2DMake(48.9998, -104.0488);
    points[1] = CLLocationCoordinate2DMake(49.0000, -97.2304);
    points[2] = CLLocationCoordinate2DMake(48.8647, -97.1851);
    points[3] = CLLocationCoordinate2DMake(48.7806, -97.1576);
    points[4] = CLLocationCoordinate2DMake(48.6683, -97.1040);
    points[5] = CLLocationCoordinate2DMake(48.5539, -97.1645);
    points[6] = CLLocationCoordinate2DMake(48.2832, -97.1411);
    points[7] = CLLocationCoordinate2DMake(48.1578, -97.1397);
    points[8] = CLLocationCoordinate2DMake(47.9633, -97.0587);
    points[9] = CLLocationCoordinate2DMake(47.7098, -96.9434);
    points[10] = CLLocationCoordinate2DMake(47.5821, -96.8582);
    points[11] = CLLocationCoordinate2DMake(47.2345, -96.8335);
    points[12] = CLLocationCoordinate2DMake(46.9329, -96.7648);
    points[13] = CLLocationCoordinate2DMake(46.6702, -96.8005);
    points[14] = CLLocationCoordinate2DMake(46.5135, -96.7126);
    points[15] = CLLocationCoordinate2DMake(46.2786, -96.6028);
    points[16] = CLLocationCoordinate2DMake(46.0189, -96.5767);
    points[17] = CLLocationCoordinate2DMake(45.9340, -96.5671);
    points[18] = CLLocationCoordinate2DMake(45.9445, -104.0446);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:19];
    
    return poly;
}


- (MKPolygon *)polygonForNebraska
{
    CLLocationCoordinate2D points[34];
    
    points[0] = CLLocationCoordinate2DMake(43.0006, -104.0543);
    points[1] = CLLocationCoordinate2DMake(42.9946, -98.4993);
    points[2] = CLLocationCoordinate2DMake(42.9283, -98.4444);
    points[3] = CLLocationCoordinate2DMake(42.8438, -98.1958);
    points[4] = CLLocationCoordinate2DMake(42.7773, -98.0571);
    points[5] = CLLocationCoordinate2DMake(42.7631, -97.9761);
    points[6] = CLLocationCoordinate2DMake(42.8599, -97.8566);
    points[7] = CLLocationCoordinate2DMake(42.8518, -97.2290);
    points[8] = CLLocationCoordinate2DMake(42.8075, -97.2057);
    points[9] = CLLocationCoordinate2DMake(42.7157, -96.8486);
    points[10] = CLLocationCoordinate2DMake(42.5237, -96.6220);
    points[11] = CLLocationCoordinate2DMake(42.4772, -96.4806);
    points[12] = CLLocationCoordinate2DMake(42.4810, -96.3927);
    points[13] = CLLocationCoordinate2DMake(42.3667, -96.4050);
    points[14] = CLLocationCoordinate2DMake(42.2722, -96.3446);
    points[15] = CLLocationCoordinate2DMake(42.2051, -96.3625);
    points[16] = CLLocationCoordinate2DMake(41.9983, -96.2416);
    points[17] = CLLocationCoordinate2DMake(41.9513, -96.1372);
    points[18] = CLLocationCoordinate2DMake(41.7662, -96.0741);
    points[19] = CLLocationCoordinate2DMake(41.6267, -96.0988);
    points[20] = CLLocationCoordinate2DMake(41.4561, -95.9477);
    points[21] = CLLocationCoordinate2DMake(41.2819, -95.8804);
    points[22] = CLLocationCoordinate2DMake(41.0338, -95.8653);
    points[23] = CLLocationCoordinate2DMake(40.8346, -95.8365);
    points[24] = CLLocationCoordinate2DMake(40.6775, -95.8461);
    points[25] = CLLocationCoordinate2DMake(40.5837, -95.7610);
    points[26] = CLLocationCoordinate2DMake(40.4302, -95.6689);
    points[27] = CLLocationCoordinate2DMake(40.3130, -95.6470);
    points[28] = CLLocationCoordinate2DMake(40.2397, -95.4808);
    points[29] = CLLocationCoordinate2DMake(39.9992, -95.3091);
    points[30] = CLLocationCoordinate2DMake(40.0034, -102.0493);
    points[31] = CLLocationCoordinate2DMake(41.0006, -102.0506);
    points[32] = CLLocationCoordinate2DMake(41.0006, -104.0529);
    points[33] = CLLocationCoordinate2DMake(43.0026, -104.0529);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:34];
    
    return poly;
}


- (MKPolygon *)polygonForNew_Hampshire
{
    CLLocationCoordinate2D points[108];
    
    points[0] = CLLocationCoordinate2DMake(45.0153, -71.5045);
    points[1] = CLLocationCoordinate2DMake(45.0532, -71.4977);
    points[2] = CLLocationCoordinate2DMake(45.0910, -71.4619);
    points[3] = CLLocationCoordinate2DMake(45.1520, -71.4276);
    points[4] = CLLocationCoordinate2DMake(45.2043, -71.3960);
    points[5] = CLLocationCoordinate2DMake(45.2362, -71.4455);
    points[6] = CLLocationCoordinate2DMake(45.2372, -71.3878);
    points[7] = CLLocationCoordinate2DMake(45.2710, -71.3617);
    points[8] = CLLocationCoordinate2DMake(45.3029, -71.2834);
    points[9] = CLLocationCoordinate2DMake(45.2507, -71.2299);
    points[10] = CLLocationCoordinate2DMake(45.2391, -71.1818);
    points[11] = CLLocationCoordinate2DMake(45.2478, -71.1584);
    points[12] = CLLocationCoordinate2DMake(45.2469, -71.1337);
    points[13] = CLLocationCoordinate2DMake(45.2846, -71.1145);
    points[14] = CLLocationCoordinate2DMake(45.3058, -71.0843);
    points[15] = CLLocationCoordinate2DMake(44.9230, -71.0527);
    points[16] = CLLocationCoordinate2DMake(44.3592, -71.0143);
    points[17] = CLLocationCoordinate2DMake(43.7364, -70.9840);
    points[18] = CLLocationCoordinate2DMake(43.5704, -70.9731);
    points[19] = CLLocationCoordinate2DMake(43.3621, -70.9813);
    points[20] = CLLocationCoordinate2DMake(43.2942, -70.9030);
    points[21] = CLLocationCoordinate2DMake(43.2272, -70.8083);
    points[22] = CLLocationCoordinate2DMake(43.1411, -70.8261);
    points[23] = CLLocationCoordinate2DMake(43.1000, -70.7671);
    points[24] = CLLocationCoordinate2DMake(43.0498, -70.6970);
    points[25] = CLLocationCoordinate2DMake(42.9222, -70.5583);
    points[26] = CLLocationCoordinate2DMake(42.8760, -70.6133);
    points[27] = CLLocationCoordinate2DMake(42.8619, -70.8440);
    points[28] = CLLocationCoordinate2DMake(42.8890, -70.9154);
    points[29] = CLLocationCoordinate2DMake(42.8075, -71.0651);
    points[30] = CLLocationCoordinate2DMake(42.8226, -71.1337);
    points[31] = CLLocationCoordinate2DMake(42.7873, -71.1859);
    points[32] = CLLocationCoordinate2DMake(42.7369, -71.1832);
    points[33] = CLLocationCoordinate2DMake(42.7470, -71.2189);
    points[34] = CLLocationCoordinate2DMake(42.7400, -71.2560);
    points[35] = CLLocationCoordinate2DMake(42.6970, -71.2941);
    points[36] = CLLocationCoordinate2DMake(42.7077, -71.7421);
    points[37] = CLLocationCoordinate2DMake(42.7268, -72.4590);
    points[38] = CLLocationCoordinate2DMake(42.7621, -72.5098);
    points[39] = CLLocationCoordinate2DMake(42.8105, -72.5414);
    points[40] = CLLocationCoordinate2DMake(42.8609, -72.5592);
    points[41] = CLLocationCoordinate2DMake(42.8981, -72.5317);
    points[42] = CLLocationCoordinate2DMake(42.9524, -72.5400);
    points[43] = CLLocationCoordinate2DMake(42.9745, -72.4919);
    points[44] = CLLocationCoordinate2DMake(42.9906, -72.4658);
    points[45] = CLLocationCoordinate2DMake(43.0127, -72.4480);
    points[46] = CLLocationCoordinate2DMake(43.0287, -72.4713);
    points[47] = CLLocationCoordinate2DMake(43.0508, -72.4713);
    points[48] = CLLocationCoordinate2DMake(43.0819, -72.4356);
    points[49] = CLLocationCoordinate2DMake(43.1040, -72.4452);
    points[50] = CLLocationCoordinate2DMake(43.1180, -72.4342);
    points[51] = CLLocationCoordinate2DMake(43.1501, -72.4590);
    points[52] = CLLocationCoordinate2DMake(43.2052, -72.4329);
    points[53] = CLLocationCoordinate2DMake(43.2562, -72.4384);
    points[54] = CLLocationCoordinate2DMake(43.2812, -72.4095);
    points[55] = CLLocationCoordinate2DMake(43.3741, -72.4150);
    points[56] = CLLocationCoordinate2DMake(43.4988, -72.3807);
    points[57] = CLLocationCoordinate2DMake(43.5127, -72.4013);
    points[58] = CLLocationCoordinate2DMake(43.5834, -72.3779);
    points[59] = CLLocationCoordinate2DMake(43.6420, -72.3134);
    points[60] = CLLocationCoordinate2DMake(43.6758, -72.3024);
    points[61] = CLLocationCoordinate2DMake(43.7036, -72.3079);
    points[62] = CLLocationCoordinate2DMake(43.7344, -72.2694);
    points[63] = CLLocationCoordinate2DMake(43.7741, -72.2035);
    points[64] = CLLocationCoordinate2DMake(43.8187, -72.1870);
    points[65] = CLLocationCoordinate2DMake(43.8672, -72.1843);
    points[66] = CLLocationCoordinate2DMake(43.8890, -72.1568);
    points[67] = CLLocationCoordinate2DMake(43.9117, -72.1321);
    points[68] = CLLocationCoordinate2DMake(43.9454, -72.1198);
    points[69] = CLLocationCoordinate2DMake(44.0017, -72.1170);
    points[70] = CLLocationCoordinate2DMake(44.0856, -72.0470);
    points[71] = CLLocationCoordinate2DMake(44.1093, -72.0552);
    points[72] = CLLocationCoordinate2DMake(44.1428, -72.0387);
    points[73] = CLLocationCoordinate2DMake(44.1763, -72.0580);
    points[74] = CLLocationCoordinate2DMake(44.1999, -72.0703);
    points[75] = CLLocationCoordinate2DMake(44.2511, -72.0525);
    points[76] = CLLocationCoordinate2DMake(44.2796, -72.0607);
    points[77] = CLLocationCoordinate2DMake(44.3199, -72.0291);
    points[78] = CLLocationCoordinate2DMake(44.3376, -71.9783);
    points[79] = CLLocationCoordinate2DMake(44.3592, -71.9289);
    points[80] = CLLocationCoordinate2DMake(44.3366, -71.8712);
    points[81] = CLLocationCoordinate2DMake(44.3572, -71.8135);
    points[82] = CLLocationCoordinate2DMake(44.3877, -71.8108);
    points[83] = CLLocationCoordinate2DMake(44.4014, -71.7778);
    points[84] = CLLocationCoordinate2DMake(44.4122, -71.7380);
    points[85] = CLLocationCoordinate2DMake(44.4416, -71.6597);
    points[86] = CLLocationCoordinate2DMake(44.4642, -71.6542);
    points[87] = CLLocationCoordinate2DMake(44.5073, -71.5855);
    points[88] = CLLocationCoordinate2DMake(44.5357, -71.5746);
    points[89] = CLLocationCoordinate2DMake(44.5601, -71.6048);
    points[90] = CLLocationCoordinate2DMake(44.5680, -71.5897);
    points[91] = CLLocationCoordinate2DMake(44.5680, -71.5649);
    points[92] = CLLocationCoordinate2DMake(44.5914, -71.5485);
    points[93] = CLLocationCoordinate2DMake(44.5993, -71.5649);
    points[94] = CLLocationCoordinate2DMake(44.6315, -71.5540);
    points[95] = CLLocationCoordinate2DMake(44.6608, -71.5924);
    points[96] = CLLocationCoordinate2DMake(44.7243, -71.6130);
    points[97] = CLLocationCoordinate2DMake(44.7526, -71.6364);
    points[98] = CLLocationCoordinate2DMake(44.8198, -71.5746);
    points[99] = CLLocationCoordinate2DMake(44.8325, -71.5526);
    points[100] = CLLocationCoordinate2DMake(44.8539, -71.5553);
    points[101] = CLLocationCoordinate2DMake(44.8744, -71.5279);
    points[102] = CLLocationCoordinate2DMake(44.9123, -71.5018);
    points[103] = CLLocationCoordinate2DMake(44.9366, -71.5182);
    points[104] = CLLocationCoordinate2DMake(44.9697, -71.5237);
    points[105] = CLLocationCoordinate2DMake(44.9862, -71.5443);
    points[106] = CLLocationCoordinate2DMake(45.0017, -71.5237);
    points[107] = CLLocationCoordinate2DMake(45.0163, -71.5045);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:108];
    
    return poly;
}


- (MKPolygon *)polygonForNew_Jersey
{
    CLLocationCoordinate2D points[48];
    
    points[0] = CLLocationCoordinate2DMake(41.3933, -74.7070);
    points[1] = CLLocationCoordinate2DMake(41.3572, -74.6950);
    points[2] = CLLocationCoordinate2DMake(41.3394, -74.6559);
    points[3] = CLLocationCoordinate2DMake(40.9934, -73.8940);
    points[4] = CLLocationCoordinate2DMake(40.8398, -73.9586);
    points[5] = CLLocationCoordinate2DMake(40.7691, -74.0094);
    points[6] = CLLocationCoordinate2DMake(40.6994, -74.0231);
    points[7] = CLLocationCoordinate2DMake(40.6786, -74.0437);
    points[8] = CLLocationCoordinate2DMake(40.6515, -74.0808);
    points[9] = CLLocationCoordinate2DMake(40.6421, -74.1357);
    points[10] = CLLocationCoordinate2DMake(40.6452, -74.1962);
    points[11] = CLLocationCoordinate2DMake(40.5952, -74.2003);
    points[12] = CLLocationCoordinate2DMake(40.5566, -74.2195);
    points[13] = CLLocationCoordinate2DMake(40.4877, -74.2552);
    points[14] = CLLocationCoordinate2DMake(40.4762, -74.2264);
    points[15] = CLLocationCoordinate2DMake(40.5253, -73.9503);
    points[16] = CLLocationCoordinate2DMake(40.4896, -73.8865);
    points[17] = CLLocationCoordinate2DMake(40.0045, -73.9352);
    points[18] = CLLocationCoordinate2DMake(39.6131, -74.0410);
    points[19] = CLLocationCoordinate2DMake(39.4744, -74.2209);
    points[20] = CLLocationCoordinate2DMake(38.9882, -74.6713);
    points[21] = CLLocationCoordinate2DMake(38.8664, -74.8553);
    points[22] = CLLocationCoordinate2DMake(38.8472, -75.0476);
    points[23] = CLLocationCoordinate2DMake(39.0565, -75.1685);
    points[24] = CLLocationCoordinate2DMake(39.2525, -75.3250);
    points[25] = CLLocationCoordinate2DMake(39.4500, -75.5544);
    points[26] = CLLocationCoordinate2DMake(39.4966, -75.5612);
    points[27] = CLLocationCoordinate2DMake(39.4998, -75.5283);
    points[28] = CLLocationCoordinate2DMake(39.5411, -75.5338);
    points[29] = CLLocationCoordinate2DMake(39.5761, -75.5090);
    points[30] = CLLocationCoordinate2DMake(39.6237, -75.5708);
    points[31] = CLLocationCoordinate2DMake(39.6713, -75.5104);
    points[32] = CLLocationCoordinate2DMake(39.7167, -75.4843);
    points[33] = CLLocationCoordinate2DMake(39.8033, -75.4156);
    points[34] = CLLocationCoordinate2DMake(39.8370, -75.2577);
    points[35] = CLLocationCoordinate2DMake(39.9592, -75.0929);
    points[36] = CLLocationCoordinate2DMake(40.1495, -74.7221);
    points[37] = CLLocationCoordinate2DMake(40.2628, -74.8389);
    points[38] = CLLocationCoordinate2DMake(40.3392, -74.9432);
    points[39] = CLLocationCoordinate2DMake(40.4072, -74.9776);
    points[40] = CLLocationCoordinate2DMake(40.4208, -75.0655);
    points[41] = CLLocationCoordinate2DMake(40.5013, -75.0600);
    points[42] = CLLocationCoordinate2DMake(40.5743, -75.1025);
    points[43] = CLLocationCoordinate2DMake(40.5639, -75.2124);
    points[44] = CLLocationCoordinate2DMake(40.6806, -75.1904);
    points[45] = CLLocationCoordinate2DMake(40.8554, -75.0490);
    points[46] = CLLocationCoordinate2DMake(40.9830, -75.1355);
    points[47] = CLLocationCoordinate2DMake(41.2282, -74.8608);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:48];
    
    return poly;
}


- (MKPolygon *)polygonForNew_Mexico
{
    CLLocationCoordinate2D points[11];
    
    points[0] = CLLocationCoordinate2DMake(36.9991, -109.0451);
    points[1] = CLLocationCoordinate2DMake(36.9982, -103.0023);
    points[2] = CLLocationCoordinate2DMake(36.5003, -103.0009);
    points[3] = CLLocationCoordinate2DMake(36.5003, -103.0394);
    points[4] = CLLocationCoordinate2DMake(31.9999, -103.0696);
    points[5] = CLLocationCoordinate2DMake(32.0034, -106.6223);
    points[6] = CLLocationCoordinate2DMake(31.8641, -106.6347);
    points[7] = CLLocationCoordinate2DMake(31.7830, -106.5317);
    points[8] = CLLocationCoordinate2DMake(31.7795, -108.2071);
    points[9] = CLLocationCoordinate2DMake(31.3349, -108.2140);
    points[10] = CLLocationCoordinate2DMake(31.3323, -109.0499);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:11];
    
    return poly;
}


- (MKPolygon *)polygonForNevada
{
    CLLocationCoordinate2D points[47];
    
    points[0] = CLLocationCoordinate2DMake(41.9922, -120.0037);
    points[1] = CLLocationCoordinate2DMake(42.0003, -117.9602);
    points[2] = CLLocationCoordinate2DMake(42.0003, -117.0264);
    points[3] = CLLocationCoordinate2DMake(42.0003, -115.7300);
    points[4] = CLLocationCoordinate2DMake(41.9952, -114.0436);
    points[5] = CLLocationCoordinate2DMake(38.2856, -114.0546);
    points[6] = CLLocationCoordinate2DMake(36.1934, -114.0439);
    points[7] = CLLocationCoordinate2DMake(36.1334, -114.0985);
    points[8] = CLLocationCoordinate2DMake(36.1068, -114.1260);
    points[9] = CLLocationCoordinate2DMake(36.0891, -114.1150);
    points[10] = CLLocationCoordinate2DMake(36.0313, -114.1534);
    points[11] = CLLocationCoordinate2DMake(36.0136, -114.2468);
    points[12] = CLLocationCoordinate2DMake(36.0624, -114.3292);
    points[13] = CLLocationCoordinate2DMake(36.1024, -114.3237);
    points[14] = CLLocationCoordinate2DMake(36.1434, -114.3896);
    points[15] = CLLocationCoordinate2DMake(36.1290, -114.5105);
    points[16] = CLLocationCoordinate2DMake(36.1467, -114.5215);
    points[17] = CLLocationCoordinate2DMake(36.1556, -114.5654);
    points[18] = CLLocationCoordinate2DMake(36.1334, -114.6204);
    points[19] = CLLocationCoordinate2DMake(36.1157, -114.6863);
    points[20] = CLLocationCoordinate2DMake(36.0979, -114.7742);
    points[21] = CLLocationCoordinate2DMake(36.0580, -114.7357);
    points[22] = CLLocationCoordinate2DMake(36.0447, -114.7522);
    points[23] = CLLocationCoordinate2DMake(35.9691, -114.7412);
    points[24] = CLLocationCoordinate2DMake(35.8980, -114.7028);
    points[25] = CLLocationCoordinate2DMake(35.8757, -114.6588);
    points[26] = CLLocationCoordinate2DMake(35.8579, -114.7083);
    points[27] = CLLocationCoordinate2DMake(35.8267, -114.6973);
    points[28] = CLLocationCoordinate2DMake(35.8089, -114.7192);
    points[29] = CLLocationCoordinate2DMake(35.6618, -114.6973);
    points[30] = CLLocationCoordinate2DMake(35.6037, -114.6478);
    points[31] = CLLocationCoordinate2DMake(35.5814, -114.6863);
    points[32] = CLLocationCoordinate2DMake(35.5233, -114.6533);
    points[33] = CLLocationCoordinate2DMake(35.5054, -114.6863);
    points[34] = CLLocationCoordinate2DMake(35.4070, -114.6149);
    points[35] = CLLocationCoordinate2DMake(35.3218, -114.5929);
    points[36] = CLLocationCoordinate2DMake(35.1783, -114.5737);
    points[37] = CLLocationCoordinate2DMake(35.1199, -114.6094);
    points[38] = CLLocationCoordinate2DMake(35.1109, -114.6368);
    points[39] = CLLocationCoordinate2DMake(35.0929, -114.6368);
    points[40] = CLLocationCoordinate2DMake(35.0750, -114.6039);
    points[41] = CLLocationCoordinate2DMake(35.0480, -114.6259);
    points[42] = CLLocationCoordinate2DMake(35.0019, -114.6336);
    points[43] = CLLocationCoordinate2DMake(35.1334, -114.8016);
    points[44] = CLLocationCoordinate2DMake(37.2303, -117.5153);
    points[45] = CLLocationCoordinate2DMake(39.0000, -120.0009);
    points[46] = CLLocationCoordinate2DMake(41.9942, -119.9982);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:47];
    
    return poly;
}


- (MKPolygon *)polygonForNew_York
{
    CLLocationCoordinate2D points[130];
    
    points[0] = CLLocationCoordinate2DMake(42.5142, -79.7624);
    points[1] = CLLocationCoordinate2DMake(42.7783, -79.0672);
    points[2] = CLLocationCoordinate2DMake(42.8508, -78.9313);
    points[3] = CLLocationCoordinate2DMake(42.9061, -78.9024);
    points[4] = CLLocationCoordinate2DMake(42.9554, -78.9313);
    points[5] = CLLocationCoordinate2DMake(42.9584, -78.9656);
    points[6] = CLLocationCoordinate2DMake(42.9886, -79.0219);
    points[7] = CLLocationCoordinate2DMake(43.0568, -79.0027);
    points[8] = CLLocationCoordinate2DMake(43.0769, -79.0727);
    points[9] = CLLocationCoordinate2DMake(43.1220, -79.0713);
    points[10] = CLLocationCoordinate2DMake(43.1441, -79.0302);
    points[11] = CLLocationCoordinate2DMake(43.1801, -79.0576);
    points[12] = CLLocationCoordinate2DMake(43.2482, -79.0604);
    points[13] = CLLocationCoordinate2DMake(43.2812, -79.0837);
    points[14] = CLLocationCoordinate2DMake(43.4509, -79.2004);
    points[15] = CLLocationCoordinate2DMake(43.6311, -78.6909);
    points[16] = CLLocationCoordinate2DMake(43.6321, -76.7958);
    points[17] = CLLocationCoordinate2DMake(43.9987, -76.4978);
    points[18] = CLLocationCoordinate2DMake(44.0965, -76.4388);
    points[19] = CLLocationCoordinate2DMake(44.1349, -76.3536);
    points[20] = CLLocationCoordinate2DMake(44.1989, -76.3124);
    points[21] = CLLocationCoordinate2DMake(44.2049, -76.2437);
    points[22] = CLLocationCoordinate2DMake(44.2413, -76.1655);
    points[23] = CLLocationCoordinate2DMake(44.2973, -76.1353);
    points[24] = CLLocationCoordinate2DMake(44.3327, -76.0474);
    points[25] = CLLocationCoordinate2DMake(44.3553, -75.9856);
    points[26] = CLLocationCoordinate2DMake(44.3749, -75.9196);
    points[27] = CLLocationCoordinate2DMake(44.3994, -75.8730);
    points[28] = CLLocationCoordinate2DMake(44.4308, -75.8221);
    points[29] = CLLocationCoordinate2DMake(44.4740, -75.8098);
    points[30] = CLLocationCoordinate2DMake(44.5425, -75.7288);
    points[31] = CLLocationCoordinate2DMake(44.6647, -75.5585);
    points[32] = CLLocationCoordinate2DMake(44.7672, -75.4088);
    points[33] = CLLocationCoordinate2DMake(44.8101, -75.3442);
    points[34] = CLLocationCoordinate2DMake(44.8383, -75.3058);
    points[35] = CLLocationCoordinate2DMake(44.8676, -75.2399);
    points[36] = CLLocationCoordinate2DMake(44.9211, -75.1204);
    points[37] = CLLocationCoordinate2DMake(44.9609, -74.9995);
    points[38] = CLLocationCoordinate2DMake(44.9803, -74.9899);
    points[39] = CLLocationCoordinate2DMake(44.9852, -74.9103);
    points[40] = CLLocationCoordinate2DMake(45.0017, -74.8856);
    points[41] = CLLocationCoordinate2DMake(45.0153, -74.8306);
    points[42] = CLLocationCoordinate2DMake(45.0046, -74.7633);
    points[43] = CLLocationCoordinate2DMake(45.0027, -74.7070);
    points[44] = CLLocationCoordinate2DMake(45.0007, -74.5642);
    points[45] = CLLocationCoordinate2DMake(44.9920, -74.1467);
    points[46] = CLLocationCoordinate2DMake(45.0037, -73.7306);
    points[47] = CLLocationCoordinate2DMake(45.0085, -73.4203);
    points[48] = CLLocationCoordinate2DMake(45.0109, -73.3430);
    points[49] = CLLocationCoordinate2DMake(44.9874, -73.3547);
    points[50] = CLLocationCoordinate2DMake(44.9648, -73.3379);
    points[51] = CLLocationCoordinate2DMake(44.9160, -73.3396);
    points[52] = CLLocationCoordinate2DMake(44.8354, -73.3739);
    points[53] = CLLocationCoordinate2DMake(44.8013, -73.3324);
    points[54] = CLLocationCoordinate2DMake(44.7419, -73.3667);
    points[55] = CLLocationCoordinate2DMake(44.6139, -73.3873);
    points[56] = CLLocationCoordinate2DMake(44.5787, -73.3736);
    points[57] = CLLocationCoordinate2DMake(44.4916, -73.3049);
    points[58] = CLLocationCoordinate2DMake(44.4289, -73.2953);
    points[59] = CLLocationCoordinate2DMake(44.3513, -73.3365);
    points[60] = CLLocationCoordinate2DMake(44.2757, -73.3118);
    points[61] = CLLocationCoordinate2DMake(44.1980, -73.3818);
    points[62] = CLLocationCoordinate2DMake(44.1142, -73.4079);
    points[63] = CLLocationCoordinate2DMake(44.0511, -73.4367);
    points[64] = CLLocationCoordinate2DMake(44.0165, -73.4065);
    points[65] = CLLocationCoordinate2DMake(43.9375, -73.4079);
    points[66] = CLLocationCoordinate2DMake(43.8771, -73.3749);
    points[67] = CLLocationCoordinate2DMake(43.8167, -73.3914);
    points[68] = CLLocationCoordinate2DMake(43.7790, -73.3557);
    points[69] = CLLocationCoordinate2DMake(43.6460, -73.4244);
    points[70] = CLLocationCoordinate2DMake(43.5893, -73.4340);
    points[71] = CLLocationCoordinate2DMake(43.5655, -73.3969);
    points[72] = CLLocationCoordinate2DMake(43.6112, -73.3818);
    points[73] = CLLocationCoordinate2DMake(43.6271, -73.3049);
    points[74] = CLLocationCoordinate2DMake(43.5764, -73.3063);
    points[75] = CLLocationCoordinate2DMake(43.5675, -73.2582);
    points[76] = CLLocationCoordinate2DMake(43.5227, -73.2445);
    points[77] = CLLocationCoordinate2DMake(43.2582, -73.2582);
    points[78] = CLLocationCoordinate2DMake(42.9715, -73.2733);
    points[79] = CLLocationCoordinate2DMake(42.8004, -73.2898);
    points[80] = CLLocationCoordinate2DMake(42.7460, -73.2664);
    points[81] = CLLocationCoordinate2DMake(42.4630, -73.3708);
    points[82] = CLLocationCoordinate2DMake(42.0840, -73.5095);
    points[83] = CLLocationCoordinate2DMake(42.0218, -73.4903);
    points[84] = CLLocationCoordinate2DMake(41.8808, -73.4999);
    points[85] = CLLocationCoordinate2DMake(41.2953, -73.5535);
    points[86] = CLLocationCoordinate2DMake(41.2128, -73.4834);
    points[87] = CLLocationCoordinate2DMake(41.1011, -73.7272);
    points[88] = CLLocationCoordinate2DMake(41.0338, -73.6723);
    points[89] = CLLocationCoordinate2DMake(40.9830, -73.6606);
    points[90] = CLLocationCoordinate2DMake(40.9509, -73.6132);
    points[91] = CLLocationCoordinate2DMake(41.0255, -73.2493);
    points[92] = CLLocationCoordinate2DMake(41.0866, -73.0007);
    points[93] = CLLocationCoordinate2DMake(41.1962, -72.4322);
    points[94] = CLLocationCoordinate2DMake(41.2618, -72.0827);
    points[95] = CLLocationCoordinate2DMake(41.2907, -72.0195);
    points[96] = CLLocationCoordinate2DMake(41.3103, -71.9302);
    points[97] = CLLocationCoordinate2DMake(41.1838, -71.7915);
    points[98] = CLLocationCoordinate2DMake(41.1249, -71.7929);
    points[99] = CLLocationCoordinate2DMake(41.0462, -71.7517);
    points[100] = CLLocationCoordinate2DMake(40.6306, -72.9465);
    points[101] = CLLocationCoordinate2DMake(40.5368, -73.4628);
    points[102] = CLLocationCoordinate2DMake(40.4896, -73.8865);
    points[103] = CLLocationCoordinate2DMake(40.5253, -73.9503);
    points[104] = CLLocationCoordinate2DMake(40.4762, -74.2264);
    points[105] = CLLocationCoordinate2DMake(40.4877, -74.2552);
    points[106] = CLLocationCoordinate2DMake(40.5566, -74.2195);
    points[107] = CLLocationCoordinate2DMake(40.5952, -74.2003);
    points[108] = CLLocationCoordinate2DMake(40.6452, -74.1962);
    points[109] = CLLocationCoordinate2DMake(40.6421, -74.1357);
    points[110] = CLLocationCoordinate2DMake(40.6515, -74.0808);
    points[111] = CLLocationCoordinate2DMake(40.6786, -74.0437);
    points[112] = CLLocationCoordinate2DMake(40.6994, -74.0231);
    points[113] = CLLocationCoordinate2DMake(40.7691, -74.0094);
    points[114] = CLLocationCoordinate2DMake(40.8398, -73.9586);
    points[115] = CLLocationCoordinate2DMake(40.9934, -73.8940);
    points[116] = CLLocationCoordinate2DMake(41.3394, -74.6559);
    points[117] = CLLocationCoordinate2DMake(41.3572, -74.6950);
    points[118] = CLLocationCoordinate2DMake(41.3933, -74.7070);
    points[119] = CLLocationCoordinate2DMake(41.4283, -74.7935);
    points[120] = CLLocationCoordinate2DMake(41.5086, -74.9927);
    points[121] = CLLocationCoordinate2DMake(41.6021, -75.0641);
    points[122] = CLLocationCoordinate2DMake(41.6729, -75.0366);
    points[123] = CLLocationCoordinate2DMake(41.7713, -75.0586);
    points[124] = CLLocationCoordinate2DMake(41.8696, -75.1794);
    points[125] = CLLocationCoordinate2DMake(41.9431, -75.2673);
    points[126] = CLLocationCoordinate2DMake(41.9983, -75.3580);
    points[127] = CLLocationCoordinate2DMake(42.0003, -79.7607);
    points[128] = CLLocationCoordinate2DMake(42.1827, -79.7621);
    points[129] = CLLocationCoordinate2DMake(42.5146, -79.7621);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:130];
    
    return poly;
}


- (MKPolygon *)polygonForOhio
{
    CLLocationCoordinate2D points[43];
    
    points[0] = CLLocationCoordinate2DMake(41.6959, -84.8059);
    points[1] = CLLocationCoordinate2DMake(41.7335, -83.4154);
    points[2] = CLLocationCoordinate2DMake(41.9583, -83.1126);
    points[3] = CLLocationCoordinate2DMake(41.8627, -83.0683);
    points[4] = CLLocationCoordinate2DMake(41.6757, -82.6790);
    points[5] = CLLocationCoordinate2DMake(41.6770, -82.3961);
    points[6] = CLLocationCoordinate2DMake(41.9962, -81.7094);
    points[7] = CLLocationCoordinate2DMake(41.9962, -81.6806);
    points[8] = CLLocationCoordinate2DMake(42.2061, -81.2453);
    points[9] = CLLocationCoordinate2DMake(42.3229, -80.5195);
    points[10] = CLLocationCoordinate2DMake(40.6383, -80.5188);
    points[11] = CLLocationCoordinate2DMake(40.5941, -80.6520);
    points[12] = CLLocationCoordinate2DMake(39.8676, -80.7948);
    points[13] = CLLocationCoordinate2DMake(39.6565, -80.8374);
    points[14] = CLLocationCoordinate2DMake(39.5472, -81.0276);
    points[15] = CLLocationCoordinate2DMake(39.4479, -81.1244);
    points[16] = CLLocationCoordinate2DMake(39.3460, -81.3661);
    points[17] = CLLocationCoordinate2DMake(39.4022, -81.4444);
    points[18] = CLLocationCoordinate2DMake(39.2812, -81.5680);
    points[19] = CLLocationCoordinate2DMake(39.1865, -81.7397);
    points[20] = CLLocationCoordinate2DMake(38.9359, -81.7644);
    points[21] = CLLocationCoordinate2DMake(38.8750, -81.8729);
    points[22] = CLLocationCoordinate2DMake(39.0181, -82.0294);
    points[23] = CLLocationCoordinate2DMake(38.7712, -82.1997);
    points[24] = CLLocationCoordinate2DMake(38.5965, -82.1722);
    points[25] = CLLocationCoordinate2DMake(38.5707, -82.2917);
    points[26] = CLLocationCoordinate2DMake(38.4385, -82.3425);
    points[27] = CLLocationCoordinate2DMake(38.3761, -82.5952);
    points[28] = CLLocationCoordinate2DMake(38.5782, -82.8355);
    points[29] = CLLocationCoordinate2DMake(38.7327, -82.8973);
    points[30] = CLLocationCoordinate2DMake(38.7027, -83.0127);
    points[31] = CLLocationCoordinate2DMake(38.6169, -83.1445);
    points[32] = CLLocationCoordinate2DMake(38.5976, -83.2736);
    points[33] = CLLocationCoordinate2DMake(38.6962, -83.5263);
    points[34] = CLLocationCoordinate2DMake(38.6330, -83.6636);
    points[35] = CLLocationCoordinate2DMake(38.7519, -83.8916);
    points[36] = CLLocationCoordinate2DMake(38.7712, -84.0866);
    points[37] = CLLocationCoordinate2DMake(38.8055, -84.2432);
    points[38] = CLLocationCoordinate2DMake(38.9434, -84.2857);
    points[39] = CLLocationCoordinate2DMake(39.0459, -84.4052);
    points[40] = CLLocationCoordinate2DMake(39.0960, -84.5068);
    points[41] = CLLocationCoordinate2DMake(39.1407, -84.7444);
    points[42] = CLLocationCoordinate2DMake(39.1054, -84.8201);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:43];
    
    return poly;
}


- (MKPolygon *)polygonForOklahoma
{
    CLLocationCoordinate2D points[47];
    
    points[0] = CLLocationCoordinate2DMake(37.0015, -103.0051);
    points[1] = CLLocationCoordinate2DMake(36.5030, -103.0037);
    points[2] = CLLocationCoordinate2DMake(36.4986, -100.0003);
    points[3] = CLLocationCoordinate2DMake(34.5620, -99.9934);
    points[4] = CLLocationCoordinate2DMake(34.3763, -99.6172);
    points[5] = CLLocationCoordinate2DMake(34.4137, -99.5787);
    points[6] = CLLocationCoordinate2DMake(34.3763, -99.4290);
    points[7] = CLLocationCoordinate2DMake(34.4534, -99.3823);
    points[8] = CLLocationCoordinate2DMake(34.3616, -99.2505);
    points[9] = CLLocationCoordinate2DMake(34.2129, -99.1818);
    points[10] = CLLocationCoordinate2DMake(34.1982, -98.9648);
    points[11] = CLLocationCoordinate2DMake(34.1232, -98.7424);
    points[12] = CLLocationCoordinate2DMake(34.1254, -98.5570);
    points[13] = CLLocationCoordinate2DMake(34.0618, -98.4746);
    points[14] = CLLocationCoordinate2DMake(34.1414, -98.3743);
    points[15] = CLLocationCoordinate2DMake(34.1118, -98.1793);
    points[16] = CLLocationCoordinate2DMake(34.0060, -98.0818);
    points[17] = CLLocationCoordinate2DMake(33.8966, -97.9843);
    points[18] = CLLocationCoordinate2DMake(33.8487, -97.8662);
    points[19] = CLLocationCoordinate2DMake(33.9798, -97.6932);
    points[20] = CLLocationCoordinate2DMake(33.8841, -97.4529);
    points[21] = CLLocationCoordinate2DMake(33.8282, -97.4611);
    points[22] = CLLocationCoordinate2DMake(33.8237, -97.3622);
    points[23] = CLLocationCoordinate2DMake(33.9001, -97.2166);
    points[24] = CLLocationCoordinate2DMake(33.7426, -97.1645);
    points[25] = CLLocationCoordinate2DMake(33.7392, -97.0930);
    points[26] = CLLocationCoordinate2DMake(33.9354, -96.9173);
    points[27] = CLLocationCoordinate2DMake(33.8704, -96.8527);
    points[28] = CLLocationCoordinate2DMake(33.8271, -96.7484);
    points[29] = CLLocationCoordinate2DMake(33.8202, -96.5602);
    points[30] = CLLocationCoordinate2DMake(33.7769, -96.5053);
    points[31] = CLLocationCoordinate2DMake(33.6912, -96.3474);
    points[32] = CLLocationCoordinate2DMake(33.8522, -96.0205);
    points[33] = CLLocationCoordinate2DMake(33.8396, -95.8379);
    points[34] = CLLocationCoordinate2DMake(33.8887, -95.7349);
    points[35] = CLLocationCoordinate2DMake(33.8841, -95.5426);
    points[36] = CLLocationCoordinate2DMake(33.8738, -95.2831);
    points[37] = CLLocationCoordinate2DMake(33.9570, -95.2171);
    points[38] = CLLocationCoordinate2DMake(33.8670, -95.0496);
    points[39] = CLLocationCoordinate2DMake(33.7677, -94.8862);
    points[40] = CLLocationCoordinate2DMake(33.6695, -94.6692);
    points[41] = CLLocationCoordinate2DMake(33.6386, -94.4852);
    points[42] = CLLocationCoordinate2DMake(35.3920, -94.4302);
    points[43] = CLLocationCoordinate2DMake(36.3715, -94.5978);
    points[44] = CLLocationCoordinate2DMake(36.4994, -94.6179);
    points[45] = CLLocationCoordinate2DMake(36.9989, -94.6179);
    points[46] = CLLocationCoordinate2DMake(37.0004, -103.0064);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:47];
    
    return poly;
}


- (MKPolygon *)polygonForOregon
{
    CLLocationCoordinate2D points[143];
    
    points[0] = CLLocationCoordinate2DMake(46.2596, -124.2444);
    points[1] = CLLocationCoordinate2DMake(46.2653, -124.0329);
    points[2] = CLLocationCoordinate2DMake(46.2924, -124.0212);
    points[3] = CLLocationCoordinate2DMake(46.2677, -123.9711);
    points[4] = CLLocationCoordinate2DMake(46.2383, -123.9292);
    points[5] = CLLocationCoordinate2DMake(46.2350, -123.8729);
    points[6] = CLLocationCoordinate2DMake(46.2691, -123.7404);
    points[7] = CLLocationCoordinate2DMake(46.2497, -123.6875);
    points[8] = CLLocationCoordinate2DMake(46.2573, -123.6209);
    points[9] = CLLocationCoordinate2DMake(46.2582, -123.5557);
    points[10] = CLLocationCoordinate2DMake(46.2691, -123.4946);
    points[11] = CLLocationCoordinate2DMake(46.2293, -123.4287);
    points[12] = CLLocationCoordinate2DMake(46.1822, -123.4314);
    points[13] = CLLocationCoordinate2DMake(46.1470, -123.3703);
    points[14] = CLLocationCoordinate2DMake(46.1446, -123.2810);
    points[15] = CLLocationCoordinate2DMake(46.1893, -123.1664);
    points[16] = CLLocationCoordinate2DMake(46.1865, -123.1210);
    points[17] = CLLocationCoordinate2DMake(46.1556, -123.0579);
    points[18] = CLLocationCoordinate2DMake(46.1028, -122.9597);
    points[19] = CLLocationCoordinate2DMake(46.0832, -122.9034);
    points[20] = CLLocationCoordinate2DMake(46.0604, -122.8848);
    points[21] = CLLocationCoordinate2DMake(46.0160, -122.8587);
    points[22] = CLLocationCoordinate2DMake(45.9612, -122.8148);
    points[23] = CLLocationCoordinate2DMake(45.9120, -122.8114);
    points[24] = CLLocationCoordinate2DMake(45.8642, -122.7839);
    points[25] = CLLocationCoordinate2DMake(45.8106, -122.7962);
    points[26] = CLLocationCoordinate2DMake(45.7613, -122.7619);
    points[27] = CLLocationCoordinate2DMake(45.6817, -122.7750);
    points[28] = CLLocationCoordinate2DMake(45.6582, -122.7647);
    points[29] = CLLocationCoordinate2DMake(45.6236, -122.6891);
    points[30] = CLLocationCoordinate2DMake(45.6006, -122.5676);
    points[31] = CLLocationCoordinate2DMake(45.5636, -122.4392);
    points[32] = CLLocationCoordinate2DMake(45.5756, -122.3795);
    points[33] = CLLocationCoordinate2DMake(45.5482, -122.3321);
    points[34] = CLLocationCoordinate2DMake(45.5439, -122.2641);
    points[35] = CLLocationCoordinate2DMake(45.5660, -122.2009);
    points[36] = CLLocationCoordinate2DMake(45.5838, -122.1426);
    points[37] = CLLocationCoordinate2DMake(45.5833, -122.1089);
    points[38] = CLLocationCoordinate2DMake(45.6088, -122.0451);
    points[39] = CLLocationCoordinate2DMake(45.6452, -121.9338);
    points[40] = CLLocationCoordinate2DMake(45.7067, -121.8095);
    points[41] = CLLocationCoordinate2DMake(45.6947, -121.7361);
    points[42] = CLLocationCoordinate2DMake(45.7091, -121.6145);
    points[43] = CLLocationCoordinate2DMake(45.7263, -121.5328);
    points[44] = CLLocationCoordinate2DMake(45.6932, -121.4010);
    points[45] = CLLocationCoordinate2DMake(45.7057, -121.3392);
    points[46] = CLLocationCoordinate2DMake(45.6721, -121.2177);
    points[47] = CLLocationCoordinate2DMake(45.6083, -121.1847);
    points[48] = CLLocationCoordinate2DMake(45.6078, -121.1469);
    points[49] = CLLocationCoordinate2DMake(45.6529, -121.0645);
    points[50] = CLLocationCoordinate2DMake(45.6419, -120.9787);
    points[51] = CLLocationCoordinate2DMake(45.6572, -120.9471);
    points[52] = CLLocationCoordinate2DMake(45.6409, -120.9142);
    points[53] = CLLocationCoordinate2DMake(45.6721, -120.8558);
    points[54] = CLLocationCoordinate2DMake(45.7143, -120.6924);
    points[55] = CLLocationCoordinate2DMake(45.7460, -120.6340);
    points[56] = CLLocationCoordinate2DMake(45.7469, -120.5942);
    points[57] = CLLocationCoordinate2DMake(45.6951, -120.4829);
    points[58] = CLLocationCoordinate2DMake(45.7057, -120.3628);
    points[59] = CLLocationCoordinate2DMake(45.7258, -120.2110);
    points[60] = CLLocationCoordinate2DMake(45.7623, -120.1705);
    points[61] = CLLocationCoordinate2DMake(45.7852, -120.0710);
    points[62] = CLLocationCoordinate2DMake(45.8245, -119.9652);
    points[63] = CLLocationCoordinate2DMake(45.8278, -119.9096);
    points[64] = CLLocationCoordinate2DMake(45.8479, -119.8052);
    points[65] = CLLocationCoordinate2DMake(45.8565, -119.6700);
    points[66] = CLLocationCoordinate2DMake(45.9196, -119.6013);
    points[67] = CLLocationCoordinate2DMake(45.9249, -119.5724);
    points[68] = CLLocationCoordinate2DMake(45.9067, -119.4894);
    points[69] = CLLocationCoordinate2DMake(45.9172, -119.4386);
    points[70] = CLLocationCoordinate2DMake(45.9220, -119.3644);
    points[71] = CLLocationCoordinate2DMake(45.9354, -119.3047);
    points[72] = CLLocationCoordinate2DMake(45.9402, -119.2559);
    points[73] = CLLocationCoordinate2DMake(45.9278, -119.1708);
    points[74] = CLLocationCoordinate2DMake(45.9320, -119.1302);
    points[75] = CLLocationCoordinate2DMake(45.9998, -118.9867);
    points[76] = CLLocationCoordinate2DMake(46.0008, -118.0330);
    points[77] = CLLocationCoordinate2DMake(45.9960, -116.9165);
    points[78] = CLLocationCoordinate2DMake(45.9769, -116.8925);
    points[79] = CLLocationCoordinate2DMake(45.9545, -116.8739);
    points[80] = CLLocationCoordinate2DMake(45.9053, -116.8595);
    points[81] = CLLocationCoordinate2DMake(45.8642, -116.8046);
    points[82] = CLLocationCoordinate2DMake(45.8341, -116.7908);
    points[83] = CLLocationCoordinate2DMake(45.8159, -116.7586);
    points[84] = CLLocationCoordinate2DMake(45.8259, -116.7105);
    points[85] = CLLocationCoordinate2DMake(45.7805, -116.6597);
    points[86] = CLLocationCoordinate2DMake(45.7781, -116.5965);
    points[87] = CLLocationCoordinate2DMake(45.7843, -116.6357);
    points[88] = CLLocationCoordinate2DMake(45.7541, -116.5594);
    points[89] = CLLocationCoordinate2DMake(45.7340, -116.5354);
    points[90] = CLLocationCoordinate2DMake(45.6904, -116.5354);
    points[91] = CLLocationCoordinate2DMake(45.6140, -116.4640);
    points[92] = CLLocationCoordinate2DMake(45.5371, -116.5334);
    points[93] = CLLocationCoordinate2DMake(45.4630, -116.5553);
    points[94] = CLLocationCoordinate2DMake(45.4433, -116.5883);
    points[95] = CLLocationCoordinate2DMake(45.3984, -116.6185);
    points[96] = CLLocationCoordinate2DMake(45.3213, -116.6741);
    points[97] = CLLocationCoordinate2DMake(45.2178, -116.7105);
    points[98] = CLLocationCoordinate2DMake(45.1627, -116.7229);
    points[99] = CLLocationCoordinate2DMake(45.0968, -116.7819);
    points[100] = CLLocationCoordinate2DMake(45.0313, -116.8417);
    points[101] = CLLocationCoordinate2DMake(44.9896, -116.8554);
    points[102] = CLLocationCoordinate2DMake(44.9624, -116.8513);
    points[103] = CLLocationCoordinate2DMake(44.9356, -116.8327);
    points[104] = CLLocationCoordinate2DMake(44.8568, -116.8980);
    points[105] = CLLocationCoordinate2DMake(44.7921, -116.9316);
    points[106] = CLLocationCoordinate2DMake(44.7423, -117.0442);
    points[107] = CLLocationCoordinate2DMake(44.5376, -117.1458);
    points[108] = CLLocationCoordinate2DMake(44.5234, -117.1836);
    points[109] = CLLocationCoordinate2DMake(44.4769, -117.2269);
    points[110] = CLLocationCoordinate2DMake(44.3813, -117.2372);
    points[111] = CLLocationCoordinate2DMake(44.3445, -117.1994);
    points[112] = CLLocationCoordinate2DMake(44.2973, -117.2255);
    points[113] = CLLocationCoordinate2DMake(44.2590, -117.1541);
    points[114] = CLLocationCoordinate2DMake(44.2806, -117.1122);
    points[115] = CLLocationCoordinate2DMake(44.2585, -117.0895);
    points[116] = CLLocationCoordinate2DMake(44.2304, -117.0525);
    points[117] = CLLocationCoordinate2DMake(44.2486, -117.0339);
    points[118] = CLLocationCoordinate2DMake(44.2442, -116.9810);
    points[119] = CLLocationCoordinate2DMake(44.1965, -116.9714);
    points[120] = CLLocationCoordinate2DMake(44.1561, -116.8945);
    points[121] = CLLocationCoordinate2DMake(44.1014, -116.9330);
    points[122] = CLLocationCoordinate2DMake(44.0491, -116.9735);
    points[123] = CLLocationCoordinate2DMake(44.0244, -116.9302);
    points[124] = CLLocationCoordinate2DMake(43.9073, -116.9776);
    points[125] = CLLocationCoordinate2DMake(43.8632, -117.0030);
    points[126] = CLLocationCoordinate2DMake(43.8330, -117.0325);
    points[127] = CLLocationCoordinate2DMake(43.7820, -117.0277);
    points[128] = CLLocationCoordinate2DMake(43.6639, -117.0264);
    points[129] = CLLocationCoordinate2DMake(42.0024, -117.0264);
    points[130] = CLLocationCoordinate2DMake(41.9983, -121.2836);
    points[131] = CLLocationCoordinate2DMake(42.0085, -122.5003);
    points[132] = CLLocationCoordinate2DMake(42.0064, -123.0798);
    points[133] = CLLocationCoordinate2DMake(42.0105, -123.1540);
    points[134] = CLLocationCoordinate2DMake(42.0044, -123.2419);
    points[135] = CLLocationCoordinate2DMake(42.0024, -123.6209);
    points[136] = CLLocationCoordinate2DMake(41.9952, -124.3982);
    points[137] = CLLocationCoordinate2DMake(42.1593, -124.5493);
    points[138] = CLLocationCoordinate2DMake(42.6521, -124.5877);
    points[139] = CLLocationCoordinate2DMake(42.8115, -124.7305);
    points[140] = CLLocationCoordinate2DMake(43.7552, -124.4119);
    points[141] = CLLocationCoordinate2DMake(46.0065, -124.2554);
    points[142] = CLLocationCoordinate2DMake(46.2587, -124.2444);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:143];
    
    return poly;
}


- (MKPolygon *)polygonForPennsylvania
{
    CLLocationCoordinate2D points[33];
    
    points[0] = CLLocationCoordinate2DMake(42.3229, -80.5195);
    points[1] = CLLocationCoordinate2DMake(42.3961, -80.0821);
    points[2] = CLLocationCoordinate2DMake(42.5167, -79.7621);
    points[3] = CLLocationCoordinate2DMake(42.0003, -79.7607);
    points[4] = CLLocationCoordinate2DMake(41.9983, -75.3580);
    points[5] = CLLocationCoordinate2DMake(41.9431, -75.2673);
    points[6] = CLLocationCoordinate2DMake(41.8696, -75.1794);
    points[7] = CLLocationCoordinate2DMake(41.7713, -75.0586);
    points[8] = CLLocationCoordinate2DMake(41.6729, -75.0366);
    points[9] = CLLocationCoordinate2DMake(41.6021, -75.0641);
    points[10] = CLLocationCoordinate2DMake(41.5086, -74.9927);
    points[11] = CLLocationCoordinate2DMake(41.4283, -74.7935);
    points[12] = CLLocationCoordinate2DMake(41.3933, -74.7070);
    points[13] = CLLocationCoordinate2DMake(41.2282, -74.8608);
    points[14] = CLLocationCoordinate2DMake(40.9830, -75.1355);
    points[15] = CLLocationCoordinate2DMake(40.8554, -75.0490);
    points[16] = CLLocationCoordinate2DMake(40.6806, -75.1904);
    points[17] = CLLocationCoordinate2DMake(40.5639, -75.2124);
    points[18] = CLLocationCoordinate2DMake(40.5743, -75.1025);
    points[19] = CLLocationCoordinate2DMake(40.5013, -75.0600);
    points[20] = CLLocationCoordinate2DMake(40.4208, -75.0655);
    points[21] = CLLocationCoordinate2DMake(40.4072, -74.9776);
    points[22] = CLLocationCoordinate2DMake(40.3392, -74.9432);
    points[23] = CLLocationCoordinate2DMake(40.2628, -74.8389);
    points[24] = CLLocationCoordinate2DMake(40.1495, -74.7221);
    points[25] = CLLocationCoordinate2DMake(39.9592, -75.0929);
    points[26] = CLLocationCoordinate2DMake(39.8370, -75.2577);
    points[27] = CLLocationCoordinate2DMake(39.8015, -75.4146);
    points[28] = CLLocationCoordinate2DMake(39.8249, -75.4692);
    points[29] = CLLocationCoordinate2DMake(39.8296, -75.6477);
    points[30] = CLLocationCoordinate2DMake(39.7199, -75.7906);
    points[31] = CLLocationCoordinate2DMake(39.7222, -75.7886);
    points[32] = CLLocationCoordinate2DMake(39.7216, -80.5191);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:33];
    
    return poly;
}


- (MKPolygon *)polygonForRhode_Island
{
    CLLocationCoordinate2D points[21];
    
    points[0] = CLLocationCoordinate2DMake(41.3706, -71.0568);
    points[1] = CLLocationCoordinate2DMake(41.4973, -71.1214);
    points[2] = CLLocationCoordinate2DMake(41.5939, -71.1310);
    points[3] = CLLocationCoordinate2DMake(41.6124, -71.1433);
    points[4] = CLLocationCoordinate2DMake(41.6616, -71.1351);
    points[5] = CLLocationCoordinate2DMake(41.6719, -71.1914);
    points[6] = CLLocationCoordinate2DMake(41.7529, -71.2628);
    points[7] = CLLocationCoordinate2DMake(41.7816, -71.3342);
    points[8] = CLLocationCoordinate2DMake(41.8245, -71.3493);
    points[9] = CLLocationCoordinate2DMake(41.8358, -71.3370);
    points[10] = CLLocationCoordinate2DMake(41.8981, -71.3387);
    points[11] = CLLocationCoordinate2DMake(41.8929, -71.3809);
    points[12] = CLLocationCoordinate2DMake(42.0186, -71.3813);
    points[13] = CLLocationCoordinate2DMake(42.0080, -71.7991);
    points[14] = CLLocationCoordinate2DMake(41.6832, -71.7874);
    points[15] = CLLocationCoordinate2DMake(41.4165, -71.7984);
    points[16] = CLLocationCoordinate2DMake(41.3892, -71.8341);
    points[17] = CLLocationCoordinate2DMake(41.3273, -71.8526);
    points[18] = CLLocationCoordinate2DMake(41.3103, -71.9302);
    points[19] = CLLocationCoordinate2DMake(41.1849, -71.7915);
    points[20] = CLLocationCoordinate2DMake(41.2665, -71.4084);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:21];
    
    return poly;
}


- (MKPolygon *)polygonForSouth_Carolina
{
    CLLocationCoordinate2D points[54];
    
    points[0] = CLLocationCoordinate2DMake(34.9996, -83.1088);
    points[1] = CLLocationCoordinate2DMake(35.0817, -82.7861);
    points[2] = CLLocationCoordinate2DMake(35.0637, -82.7765);
    points[3] = CLLocationCoordinate2DMake(35.2041, -82.3933);
    points[4] = CLLocationCoordinate2DMake(35.1985, -82.2739);
    points[5] = CLLocationCoordinate2DMake(35.1660, -81.3867);
    points[6] = CLLocationCoordinate2DMake(35.1457, -81.0324);
    points[7] = CLLocationCoordinate2DMake(35.0446, -81.0324);
    points[8] = CLLocationCoordinate2DMake(35.1019, -80.9322);
    points[9] = CLLocationCoordinate2DMake(34.9344, -80.7811);
    points[10] = CLLocationCoordinate2DMake(34.8194, -80.7948);
    points[11] = CLLocationCoordinate2DMake(34.8048, -79.6756);
    points[12] = CLLocationCoordinate2DMake(34.2016, -78.9560);
    points[13] = CLLocationCoordinate2DMake(33.7951, -78.4836);
    points[14] = CLLocationCoordinate2DMake(33.6489, -78.7871);
    points[15] = CLLocationCoordinate2DMake(33.2019, -79.0837);
    points[16] = CLLocationCoordinate2DMake(32.7607, -79.4476);
    points[17] = CLLocationCoordinate2DMake(32.5225, -79.8116);
    points[18] = CLLocationCoordinate2DMake(32.3556, -80.1508);
    points[19] = CLLocationCoordinate2DMake(32.2012, -80.4240);
    points[20] = CLLocationCoordinate2DMake(32.0500, -80.7001);
    points[21] = CLLocationCoordinate2DMake(32.0333, -80.7509);
    points[22] = CLLocationCoordinate2DMake(32.0382, -80.9215);
    points[23] = CLLocationCoordinate2DMake(32.1128, -81.1134);
    points[24] = CLLocationCoordinate2DMake(32.2151, -81.1436);
    points[25] = CLLocationCoordinate2DMake(32.3185, -81.1642);
    points[26] = CLLocationCoordinate2DMake(32.4576, -81.1945);
    points[27] = CLLocationCoordinate2DMake(32.5283, -81.2769);
    points[28] = CLLocationCoordinate2DMake(32.6272, -81.4176);
    points[29] = CLLocationCoordinate2DMake(32.6914, -81.4142);
    points[30] = CLLocationCoordinate2DMake(32.9418, -81.5089);
    points[31] = CLLocationCoordinate2DMake(33.0075, -81.5034);
    points[32] = CLLocationCoordinate2DMake(33.0881, -81.6078);
    points[33] = CLLocationCoordinate2DMake(33.1456, -81.7424);
    points[34] = CLLocationCoordinate2DMake(33.1674, -81.7795);
    points[35] = CLLocationCoordinate2DMake(33.2077, -81.8303);
    points[36] = CLLocationCoordinate2DMake(33.3707, -81.9484);
    points[37] = CLLocationCoordinate2DMake(33.4588, -81.9240);
    points[38] = CLLocationCoordinate2DMake(33.5301, -82.0097);
    points[39] = CLLocationCoordinate2DMake(33.5963, -82.1558);
    points[40] = CLLocationCoordinate2DMake(33.6592, -82.1997);
    points[41] = CLLocationCoordinate2DMake(33.7563, -82.2505);
    points[42] = CLLocationCoordinate2DMake(33.8647, -82.3988);
    points[43] = CLLocationCoordinate2DMake(34.0140, -82.5952);
    points[44] = CLLocationCoordinate2DMake(34.1254, -82.6831);
    points[45] = CLLocationCoordinate2DMake(34.2674, -82.7490);
    points[46] = CLLocationCoordinate2DMake(34.4443, -82.8589);
    points[47] = CLLocationCoordinate2DMake(34.4681, -82.8918);
    points[48] = CLLocationCoordinate2DMake(34.4839, -83.0072);
    points[49] = CLLocationCoordinate2DMake(34.5744, -83.1528);
    points[50] = CLLocationCoordinate2DMake(34.6569, -83.3080);
    points[51] = CLLocationCoordinate2DMake(34.7281, -83.3560);
    points[52] = CLLocationCoordinate2DMake(34.8318, -83.3025);
    points[53] = CLLocationCoordinate2DMake(34.9287, -83.1418);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:54];
    
    return poly;
}


- (MKPolygon *)polygonForSouth_Dakota
{
    CLLocationCoordinate2D points[29];
    
    points[0] = CLLocationCoordinate2DMake(45.9445, -104.0446);
    points[1] = CLLocationCoordinate2DMake(45.9311, -96.5643);
    points[2] = CLLocationCoordinate2DMake(45.8202, -96.5849);
    points[3] = CLLocationCoordinate2DMake(45.6160, -96.8472);
    points[4] = CLLocationCoordinate2DMake(45.4601, -96.7429);
    points[5] = CLLocationCoordinate2DMake(45.2981, -96.4545);
    points[6] = CLLocationCoordinate2DMake(43.5008, -96.4517);
    points[7] = CLLocationCoordinate2DMake(43.4818, -96.6110);
    points[8] = CLLocationCoordinate2DMake(43.3871, -96.5245);
    points[9] = CLLocationCoordinate2DMake(43.2232, -96.5533);
    points[10] = CLLocationCoordinate2DMake(43.1301, -96.4421);
    points[11] = CLLocationCoordinate2DMake(42.9243, -96.5479);
    points[12] = CLLocationCoordinate2DMake(42.7188, -96.6357);
    points[13] = CLLocationCoordinate2DMake(42.6158, -96.5561);
    points[14] = CLLocationCoordinate2DMake(42.5055, -96.4847);
    points[15] = CLLocationCoordinate2DMake(42.4772, -96.4806);
    points[16] = CLLocationCoordinate2DMake(42.5237, -96.6220);
    points[17] = CLLocationCoordinate2DMake(42.7157, -96.8486);
    points[18] = CLLocationCoordinate2DMake(42.8075, -97.2057);
    points[19] = CLLocationCoordinate2DMake(42.8518, -97.2290);
    points[20] = CLLocationCoordinate2DMake(42.8599, -97.8566);
    points[21] = CLLocationCoordinate2DMake(42.7631, -97.9761);
    points[22] = CLLocationCoordinate2DMake(42.7773, -98.0571);
    points[23] = CLLocationCoordinate2DMake(42.8438, -98.1958);
    points[24] = CLLocationCoordinate2DMake(42.9283, -98.4444);
    points[25] = CLLocationCoordinate2DMake(42.9946, -98.4993);
    points[26] = CLLocationCoordinate2DMake(43.0026, -104.0529);
    points[27] = CLLocationCoordinate2DMake(44.9970, -104.0577);
    points[28] = CLLocationCoordinate2DMake(44.9976, -104.0398);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:29];
    
    return poly;
}


- (MKPolygon *)polygonForTennessee
{
    CLLocationCoordinate2D points[69];
    
    points[0] = CLLocationCoordinate2DMake(36.6778, -88.0700);
    points[1] = CLLocationCoordinate2DMake(36.6633, -87.8494);
    points[2] = CLLocationCoordinate2DMake(36.6331, -87.8530);
    points[3] = CLLocationCoordinate2DMake(36.6524, -86.5489);
    points[4] = CLLocationCoordinate2DMake(36.5827, -83.6906);
    points[5] = CLLocationCoordinate2DMake(36.6007, -83.6753);
    points[6] = CLLocationCoordinate2DMake(36.5942, -81.9338);
    points[7] = CLLocationCoordinate2DMake(36.6160, -81.9225);
    points[8] = CLLocationCoordinate2DMake(36.6119, -81.6468);
    points[9] = CLLocationCoordinate2DMake(36.5882, -81.6773);
    points[10] = CLLocationCoordinate2DMake(36.4122, -81.7407);
    points[11] = CLLocationCoordinate2DMake(36.3359, -81.7077);
    points[12] = CLLocationCoordinate2DMake(36.3569, -81.7956);
    points[13] = CLLocationCoordinate2DMake(36.2974, -81.9072);
    points[14] = CLLocationCoordinate2DMake(36.1212, -82.0308);
    points[15] = CLLocationCoordinate2DMake(36.1024, -82.1255);
    points[16] = CLLocationCoordinate2DMake(36.1434, -82.1475);
    points[17] = CLLocationCoordinate2DMake(36.1323, -82.2450);
    points[18] = CLLocationCoordinate2DMake(36.1168, -82.3521);
    points[19] = CLLocationCoordinate2DMake(36.0702, -82.4167);
    points[20] = CLLocationCoordinate2DMake(35.9669, -82.5389);
    points[21] = CLLocationCoordinate2DMake(35.9702, -82.6076);
    points[22] = CLLocationCoordinate2DMake(36.0602, -82.6378);
    points[23] = CLLocationCoordinate2DMake(35.9925, -82.7751);
    points[24] = CLLocationCoordinate2DMake(35.9169, -82.8177);
    points[25] = CLLocationCoordinate2DMake(35.8623, -82.9042);
    points[26] = CLLocationCoordinate2DMake(35.7755, -83.0017);
    points[27] = CLLocationCoordinate2DMake(35.7131, -83.2393);
    points[28] = CLLocationCoordinate2DMake(35.5635, -83.4961);
    points[29] = CLLocationCoordinate2DMake(35.5501, -83.6938);
    points[30] = CLLocationCoordinate2DMake(35.5233, -83.8284);
    points[31] = CLLocationCoordinate2DMake(35.5065, -83.8847);
    points[32] = CLLocationCoordinate2DMake(35.4014, -84.0248);
    points[33] = CLLocationCoordinate2DMake(35.2905, -84.0276);
    points[34] = CLLocationCoordinate2DMake(35.2322, -84.1113);
    points[35] = CLLocationCoordinate2DMake(35.2624, -84.2294);
    points[36] = CLLocationCoordinate2DMake(35.2198, -84.2926);
    points[37] = CLLocationCoordinate2DMake(34.9884, -84.3201);
    points[38] = CLLocationCoordinate2DMake(34.9844, -85.6044);
    points[39] = CLLocationCoordinate2DMake(35.0078, -88.2024);
    points[40] = CLLocationCoordinate2DMake(34.9955, -88.1998);
    points[41] = CLLocationCoordinate2DMake(34.9955, -90.3090);
    points[42] = CLLocationCoordinate2DMake(35.0404, -90.2953);
    points[43] = CLLocationCoordinate2DMake(35.0280, -90.2067);
    points[44] = CLLocationCoordinate2DMake(35.1354, -90.1421);
    points[45] = CLLocationCoordinate2DMake(35.1985, -90.1112);
    points[46] = CLLocationCoordinate2DMake(35.2849, -90.1524);
    points[47] = CLLocationCoordinate2DMake(35.4372, -90.1346);
    points[48] = CLLocationCoordinate2DMake(35.5568, -90.0192);
    points[49] = CLLocationCoordinate2DMake(35.7343, -89.9547);
    points[50] = CLLocationCoordinate2DMake(35.8579, -89.7638);
    points[51] = CLLocationCoordinate2DMake(35.9180, -89.6635);
    points[52] = CLLocationCoordinate2DMake(36.0004, -89.7329);
    points[53] = CLLocationCoordinate2DMake(36.0009, -89.7068);
    points[54] = CLLocationCoordinate2DMake(36.0902, -89.6759);
    points[55] = CLLocationCoordinate2DMake(36.1279, -89.5894);
    points[56] = CLLocationCoordinate2DMake(36.1856, -89.6484);
    points[57] = CLLocationCoordinate2DMake(36.2343, -89.7006);
    points[58] = CLLocationCoordinate2DMake(36.2531, -89.5331);
    points[59] = CLLocationCoordinate2DMake(36.2996, -89.6210);
    points[60] = CLLocationCoordinate2DMake(36.3494, -89.5784);
    points[61] = CLLocationCoordinate2DMake(36.3406, -89.5180);
    points[62] = CLLocationCoordinate2DMake(36.4979, -89.5389);
    points[63] = CLLocationCoordinate2DMake(36.4974, -89.4850);
    points[64] = CLLocationCoordinate2DMake(36.4573, -89.4689);
    points[65] = CLLocationCoordinate2DMake(36.4987, -89.4177);
    points[66] = CLLocationCoordinate2DMake(36.5107, -89.3051);
    points[67] = CLLocationCoordinate2DMake(36.4986, -88.1667);
    points[68] = CLLocationCoordinate2DMake(36.4997, -88.0692);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:69];
    
    return poly;
}


- (MKPolygon *)polygonForTexas
{
    CLLocationCoordinate2D points[171];
    
    points[0] = CLLocationCoordinate2DMake(31.8659, -106.5715);
    points[1] = CLLocationCoordinate2DMake(31.7504, -106.5042);
    points[2] = CLLocationCoordinate2DMake(31.6242, -106.3092);
    points[3] = CLLocationCoordinate2DMake(31.4638, -106.2103);
    points[4] = CLLocationCoordinate2DMake(31.3912, -106.0181);
    points[5] = CLLocationCoordinate2DMake(31.1846, -105.7874);
    points[6] = CLLocationCoordinate2DMake(31.0012, -105.5663);
    points[7] = CLLocationCoordinate2DMake(30.8456, -105.4015);
    points[8] = CLLocationCoordinate2DMake(30.6462, -105.0032);
    points[9] = CLLocationCoordinate2DMake(30.3847, -104.8521);
    points[10] = CLLocationCoordinate2DMake(30.2591, -104.7437);
    points[11] = CLLocationCoordinate2DMake(30.0738, -104.6915);
    points[12] = CLLocationCoordinate2DMake(29.9169, -104.6777);
    points[13] = CLLocationCoordinate2DMake(29.7644, -104.5679);
    points[14] = CLLocationCoordinate2DMake(29.6475, -104.5280);
    points[15] = CLLocationCoordinate2DMake(29.5603, -104.4044);
    points[16] = CLLocationCoordinate2DMake(29.4719, -104.2067);
    points[17] = CLLocationCoordinate2DMake(29.3834, -104.1559);
    points[18] = CLLocationCoordinate2DMake(29.2948, -103.9774);
    points[19] = CLLocationCoordinate2DMake(29.2804, -103.9128);
    points[20] = CLLocationCoordinate2DMake(29.2481, -103.8208);
    points[21] = CLLocationCoordinate2DMake(29.1378, -103.5640);
    points[22] = CLLocationCoordinate2DMake(29.0682, -103.4692);
    points[23] = CLLocationCoordinate2DMake(29.0105, -103.3154);
    points[24] = CLLocationCoordinate2DMake(28.9601, -103.1616);
    points[25] = CLLocationCoordinate2DMake(29.0177, -103.0957);
    points[26] = CLLocationCoordinate2DMake(29.1330, -103.0298);
    points[27] = CLLocationCoordinate2DMake(29.2157, -102.8677);
    points[28] = CLLocationCoordinate2DMake(29.2565, -102.8979);
    points[29] = CLLocationCoordinate2DMake(29.3570, -102.8375);
    points[30] = CLLocationCoordinate2DMake(29.4898, -102.8004);
    points[31] = CLLocationCoordinate2DMake(29.6881, -102.7002);
    points[32] = CLLocationCoordinate2DMake(29.7691, -102.5134);
    points[33] = CLLocationCoordinate2DMake(29.7596, -102.3843);
    points[34] = CLLocationCoordinate2DMake(29.8788, -102.3047);
    points[35] = CLLocationCoordinate2DMake(29.7834, -102.1509);
    points[36] = CLLocationCoordinate2DMake(29.7572, -101.7004);
    points[37] = CLLocationCoordinate2DMake(29.7644, -101.4917);
    points[38] = CLLocationCoordinate2DMake(29.6308, -101.2939);
    points[39] = CLLocationCoordinate2DMake(29.5269, -101.2582);
    points[40] = CLLocationCoordinate2DMake(29.3642, -101.0056);
    points[41] = CLLocationCoordinate2DMake(29.3056, -100.9204);
    points[42] = CLLocationCoordinate2DMake(29.1642, -100.7707);
    points[43] = CLLocationCoordinate2DMake(29.0946, -100.7007);
    points[44] = CLLocationCoordinate2DMake(28.9012, -100.6306);
    points[45] = CLLocationCoordinate2DMake(28.6593, -100.4974);
    points[46] = CLLocationCoordinate2DMake(28.4675, -100.3601);
    points[47] = CLLocationCoordinate2DMake(28.2778, -100.2969);
    points[48] = CLLocationCoordinate2DMake(28.1882, -100.1733);
    points[49] = CLLocationCoordinate2DMake(28.0526, -100.0195);
    points[50] = CLLocationCoordinate2DMake(27.9435, -99.9344);
    points[51] = CLLocationCoordinate2DMake(27.7638, -99.8438);
    points[52] = CLLocationCoordinate2DMake(27.6641, -99.7119);
    points[53] = CLLocationCoordinate2DMake(27.4839, -99.4812);
    points[54] = CLLocationCoordinate2DMake(27.3059, -99.5375);
    points[55] = CLLocationCoordinate2DMake(27.1948, -99.4290);
    points[56] = CLLocationCoordinate2DMake(27.0175, -99.4455);
    points[57] = CLLocationCoordinate2DMake(26.8829, -99.3164);
    points[58] = CLLocationCoordinate2DMake(26.6867, -99.2065);
    points[59] = CLLocationCoordinate2DMake(26.4116, -99.0967);
    points[60] = CLLocationCoordinate2DMake(26.3574, -98.8138);
    points[61] = CLLocationCoordinate2DMake(26.2257, -98.6668);
    points[62] = CLLocationCoordinate2DMake(26.2343, -98.5474);
    points[63] = CLLocationCoordinate2DMake(26.1357, -98.3276);
    points[64] = CLLocationCoordinate2DMake(26.0457, -98.1697);
    points[65] = CLLocationCoordinate2DMake(26.0518, -97.9143);
    points[66] = CLLocationCoordinate2DMake(26.0050, -97.6643);
    points[67] = CLLocationCoordinate2DMake(25.8419, -97.4020);
    points[68] = CLLocationCoordinate2DMake(25.9074, -97.3526);
    points[69] = CLLocationCoordinate2DMake(25.9679, -97.0148);
    points[70] = CLLocationCoordinate2DMake(26.1789, -97.0697);
    points[71] = CLLocationCoordinate2DMake(26.8253, -97.2249);
    points[72] = CLLocationCoordinate2DMake(27.4230, -97.0752);
    points[73] = CLLocationCoordinate2DMake(28.0599, -96.6096);
    points[74] = CLLocationCoordinate2DMake(28.4228, -95.9285);
    points[75] = CLLocationCoordinate2DMake(28.7568, -95.3036);
    points[76] = CLLocationCoordinate2DMake(29.0742, -94.7296);
    points[77] = CLLocationCoordinate2DMake(29.3810, -94.3355);
    points[78] = CLLocationCoordinate2DMake(29.6021, -93.8205);
    points[79] = CLLocationCoordinate2DMake(29.8013, -93.9317);
    points[80] = CLLocationCoordinate2DMake(29.9157, -93.8136);
    points[81] = CLLocationCoordinate2DMake(30.0489, -93.7230);
    points[82] = CLLocationCoordinate2DMake(30.1214, -93.6996);
    points[83] = CLLocationCoordinate2DMake(30.2021, -93.7216);
    points[84] = CLLocationCoordinate2DMake(30.2792, -93.7038);
    points[85] = CLLocationCoordinate2DMake(30.3278, -93.7628);
    points[86] = CLLocationCoordinate2DMake(30.3835, -93.7587);
    points[87] = CLLocationCoordinate2DMake(30.4380, -93.7010);
    points[88] = CLLocationCoordinate2DMake(30.5079, -93.7024);
    points[89] = CLLocationCoordinate2DMake(30.5362, -93.7299);
    points[90] = CLLocationCoordinate2DMake(30.6296, -93.6694);
    points[91] = CLLocationCoordinate2DMake(30.7466, -93.6090);
    points[92] = CLLocationCoordinate2DMake(30.8114, -93.5527);
    points[93] = CLLocationCoordinate2DMake(30.8834, -93.5747);
    points[94] = CLLocationCoordinate2DMake(30.9376, -93.5307);
    points[95] = CLLocationCoordinate2DMake(31.0318, -93.5074);
    points[96] = CLLocationCoordinate2DMake(31.0812, -93.5266);
    points[97] = CLLocationCoordinate2DMake(31.1787, -93.5335);
    points[98] = CLLocationCoordinate2DMake(31.1670, -93.5980);
    points[99] = CLLocationCoordinate2DMake(31.3055, -93.6832);
    points[100] = CLLocationCoordinate2DMake(31.3830, -93.6708);
    points[101] = CLLocationCoordinate2DMake(31.4369, -93.6887);
    points[102] = CLLocationCoordinate2DMake(31.5107, -93.7202);
    points[103] = CLLocationCoordinate2DMake(31.5820, -93.8315);
    points[104] = CLLocationCoordinate2DMake(31.6440, -93.8123);
    points[105] = CLLocationCoordinate2DMake(31.7188, -93.8232);
    points[106] = CLLocationCoordinate2DMake(31.7936, -93.8342);
    points[107] = CLLocationCoordinate2DMake(31.8309, -93.8782);
    points[108] = CLLocationCoordinate2DMake(31.8869, -93.9221);
    points[109] = CLLocationCoordinate2DMake(31.9335, -93.9661);
    points[110] = CLLocationCoordinate2DMake(32.0081, -94.0430);
    points[111] = CLLocationCoordinate2DMake(33.4681, -94.0430);
    points[112] = CLLocationCoordinate2DMake(33.5414, -94.0430);
    points[113] = CLLocationCoordinate2DMake(33.5689, -94.1528);
    points[114] = CLLocationCoordinate2DMake(33.5872, -94.1968);
    points[115] = CLLocationCoordinate2DMake(33.5872, -94.2627);
    points[116] = CLLocationCoordinate2DMake(33.5689, -94.3176);
    points[117] = CLLocationCoordinate2DMake(33.5597, -94.3945);
    points[118] = CLLocationCoordinate2DMake(33.5780, -94.4275);
    points[119] = CLLocationCoordinate2DMake(33.6055, -94.4275);
    points[120] = CLLocationCoordinate2DMake(33.6421, -94.4495);
    points[121] = CLLocationCoordinate2DMake(33.6386, -94.4852);
    points[122] = CLLocationCoordinate2DMake(33.6421, -94.5236);
    points[123] = CLLocationCoordinate2DMake(33.6695, -94.6637);
    points[124] = CLLocationCoordinate2DMake(33.7061, -94.7461);
    points[125] = CLLocationCoordinate2DMake(33.7791, -94.8999);
    points[126] = CLLocationCoordinate2DMake(33.8818, -95.0757);
    points[127] = CLLocationCoordinate2DMake(33.9251, -95.1526);
    points[128] = CLLocationCoordinate2DMake(33.9604, -95.2254);
    points[129] = CLLocationCoordinate2DMake(33.8750, -95.2858);
    points[130] = CLLocationCoordinate2DMake(33.8841, -95.5399);
    points[131] = CLLocationCoordinate2DMake(33.8887, -95.7568);
    points[132] = CLLocationCoordinate2DMake(33.8408, -95.8420);
    points[133] = CLLocationCoordinate2DMake(33.8556, -96.0274);
    points[134] = CLLocationCoordinate2DMake(33.6901, -96.3528);
    points[135] = CLLocationCoordinate2DMake(33.8442, -96.6179);
    points[136] = CLLocationCoordinate2DMake(33.8898, -96.5836);
    points[137] = CLLocationCoordinate2DMake(33.8955, -96.6673);
    points[138] = CLLocationCoordinate2DMake(33.8179, -96.7538);
    points[139] = CLLocationCoordinate2DMake(33.8613, -96.8335);
    points[140] = CLLocationCoordinate2DMake(33.8613, -96.8774);
    points[141] = CLLocationCoordinate2DMake(33.9388, -96.9159);
    points[142] = CLLocationCoordinate2DMake(33.7392, -97.0917);
    points[143] = CLLocationCoordinate2DMake(33.7449, -97.1645);
    points[144] = CLLocationCoordinate2DMake(33.8978, -97.2180);
    points[145] = CLLocationCoordinate2DMake(33.8225, -97.3746);
    points[146] = CLLocationCoordinate2DMake(33.8305, -97.4611);
    points[147] = CLLocationCoordinate2DMake(33.8761, -97.4460);
    points[148] = CLLocationCoordinate2DMake(33.9798, -97.6945);
    points[149] = CLLocationCoordinate2DMake(33.8476, -97.8648);
    points[150] = CLLocationCoordinate2DMake(33.8978, -97.9651);
    points[151] = CLLocationCoordinate2DMake(34.0299, -98.0983);
    points[152] = CLLocationCoordinate2DMake(34.1141, -98.1752);
    points[153] = CLLocationCoordinate2DMake(34.1425, -98.3743);
    points[154] = CLLocationCoordinate2DMake(34.0640, -98.4773);
    points[155] = CLLocationCoordinate2DMake(34.1209, -98.5529);
    points[156] = CLLocationCoordinate2DMake(34.1232, -98.7520);
    points[157] = CLLocationCoordinate2DMake(34.2095, -98.9539);
    points[158] = CLLocationCoordinate2DMake(34.2073, -99.0637);
    points[159] = CLLocationCoordinate2DMake(34.2141, -99.1832);
    points[160] = CLLocationCoordinate2DMake(34.3593, -99.2505);
    points[161] = CLLocationCoordinate2DMake(34.4613, -99.3823);
    points[162] = CLLocationCoordinate2DMake(34.3774, -99.4318);
    points[163] = CLLocationCoordinate2DMake(34.4160, -99.5718);
    points[164] = CLLocationCoordinate2DMake(34.3706, -99.6158);
    points[165] = CLLocationCoordinate2DMake(34.4726, -99.8094);
    points[166] = CLLocationCoordinate2DMake(34.5631, -99.9934);
    points[167] = CLLocationCoordinate2DMake(36.4975, -100.0017);
    points[168] = CLLocationCoordinate2DMake(36.5008, -103.0408);
    points[169] = CLLocationCoordinate2DMake(32.0011, -103.0655);
    points[170] = CLLocationCoordinate2DMake(32.0023, -106.6168);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:171];
    
    return poly;
}


- (MKPolygon *)polygonForUtah
{
    CLLocationCoordinate2D points[6];
    
    points[0] = CLLocationCoordinate2DMake(36.9991, -109.0451);
    points[1] = CLLocationCoordinate2DMake(40.9986, -109.0503);
    points[2] = CLLocationCoordinate2DMake(41.0006, -111.0471);
    points[3] = CLLocationCoordinate2DMake(41.9993, -111.0498);
    points[4] = CLLocationCoordinate2DMake(41.9901, -114.0395);
    points[5] = CLLocationCoordinate2DMake(37.0001, -114.0508);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:6];
    
    return poly;
}


- (MKPolygon *)polygonForVirginia
{
    CLLocationCoordinate2D points[164];
    
    points[0] = CLLocationCoordinate2DMake(36.6017, -83.6753);
    points[1] = CLLocationCoordinate2DMake(36.6519, -83.5613);
    points[2] = CLLocationCoordinate2DMake(36.6673, -83.4432);
    points[3] = CLLocationCoordinate2DMake(36.7108, -83.3080);
    points[4] = CLLocationCoordinate2DMake(36.7389, -83.1974);
    points[5] = CLLocationCoordinate2DMake(36.7433, -83.1363);
    points[6] = CLLocationCoordinate2DMake(36.8032, -83.1047);
    points[7] = CLLocationCoordinate2DMake(36.8302, -83.1033);
    points[8] = CLLocationCoordinate2DMake(36.8544, -83.0704);
    points[9] = CLLocationCoordinate2DMake(36.8478, -83.0127);
    points[10] = CLLocationCoordinate2DMake(36.9839, -82.8534);
    points[11] = CLLocationCoordinate2DMake(37.0086, -82.7971);
    points[12] = CLLocationCoordinate2DMake(37.0442, -82.7360);
    points[13] = CLLocationCoordinate2DMake(37.2664, -82.3494);
    points[14] = CLLocationCoordinate2DMake(37.3046, -82.3027);
    points[15] = CLLocationCoordinate2DMake(37.5054, -82.0136);
    points[16] = CLLocationCoordinate2DMake(37.5380, -81.9681);
    points[17] = CLLocationCoordinate2DMake(37.5139, -81.9259);
    points[18] = CLLocationCoordinate2DMake(37.4889, -81.9707);
    points[19] = CLLocationCoordinate2DMake(37.4563, -81.9800);
    points[20] = CLLocationCoordinate2DMake(37.4389, -81.9374);
    points[21] = CLLocationCoordinate2DMake(37.3592, -81.9319);
    points[22] = CLLocationCoordinate2DMake(37.3134, -81.8619);
    points[23] = CLLocationCoordinate2DMake(37.2872, -81.7987);
    points[24] = CLLocationCoordinate2DMake(37.2424, -81.7259);
    points[25] = CLLocationCoordinate2DMake(37.2008, -81.6792);
    points[26] = CLLocationCoordinate2DMake(37.2083, -81.5549);
    points[27] = CLLocationCoordinate2DMake(37.2588, -81.4988);
    points[28] = CLLocationCoordinate2DMake(37.2456, -81.4856);
    points[29] = CLLocationCoordinate2DMake(37.2742, -81.4367);
    points[30] = CLLocationCoordinate2DMake(37.3243, -81.3675);
    points[31] = CLLocationCoordinate2DMake(37.2653, -81.2741);
    points[32] = CLLocationCoordinate2DMake(37.2719, -81.1560);
    points[33] = CLLocationCoordinate2DMake(37.3025, -80.9802);
    points[34] = CLLocationCoordinate2DMake(37.3396, -80.8566);
    points[35] = CLLocationCoordinate2DMake(37.3876, -80.8786);
    points[36] = CLLocationCoordinate2DMake(37.4247, -80.8511);
    points[37] = CLLocationCoordinate2DMake(37.3702, -80.7715);
    points[38] = CLLocationCoordinate2DMake(37.4749, -80.5518);
    points[39] = CLLocationCoordinate2DMake(37.4792, -80.5133);
    points[40] = CLLocationCoordinate2DMake(37.4247, -80.4803);
    points[41] = CLLocationCoordinate2DMake(37.5097, -80.3018);
    points[42] = CLLocationCoordinate2DMake(37.5359, -80.2798);
    points[43] = CLLocationCoordinate2DMake(37.5380, -80.3293);
    points[44] = CLLocationCoordinate2DMake(37.6316, -80.2249);
    points[45] = CLLocationCoordinate2DMake(37.6903, -80.3018);
    points[46] = CLLocationCoordinate2DMake(37.7251, -80.2551);
    points[47] = CLLocationCoordinate2DMake(37.7707, -80.2551);
    points[48] = CLLocationCoordinate2DMake(37.8347, -80.1961);
    points[49] = CLLocationCoordinate2DMake(37.8749, -80.1508);
    points[50] = CLLocationCoordinate2DMake(38.0394, -79.9722);
    points[51] = CLLocationCoordinate2DMake(38.1302, -79.9448);
    points[52] = CLLocationCoordinate2DMake(38.1972, -79.9063);
    points[53] = CLLocationCoordinate2DMake(38.2684, -79.7882);
    points[54] = CLLocationCoordinate2DMake(38.3093, -79.8129);
    points[55] = CLLocationCoordinate2DMake(38.3589, -79.7662);
    points[56] = CLLocationCoordinate2DMake(38.3513, -79.7401);
    points[57] = CLLocationCoordinate2DMake(38.3869, -79.7333);
    points[58] = CLLocationCoordinate2DMake(38.4321, -79.6893);
    points[59] = CLLocationCoordinate2DMake(38.4987, -79.6948);
    points[60] = CLLocationCoordinate2DMake(38.5857, -79.6495);
    points[61] = CLLocationCoordinate2DMake(38.5492, -79.5328);
    points[62] = CLLocationCoordinate2DMake(38.4557, -79.4724);
    points[63] = CLLocationCoordinate2DMake(38.4149, -79.3103);
    points[64] = CLLocationCoordinate2DMake(38.5138, -79.2087);
    points[65] = CLLocationCoordinate2DMake(38.6576, -79.1016);
    points[66] = CLLocationCoordinate2DMake(38.6941, -79.0851);
    points[67] = CLLocationCoordinate2DMake(38.7112, -79.1016);
    points[68] = CLLocationCoordinate2DMake(38.7712, -79.0576);
    points[69] = CLLocationCoordinate2DMake(38.7926, -79.0604);
    points[70] = CLLocationCoordinate2DMake(38.7926, -79.0247);
    points[71] = CLLocationCoordinate2DMake(38.8504, -78.9944);
    points[72] = CLLocationCoordinate2DMake(38.7637, -78.8736);
    points[73] = CLLocationCoordinate2DMake(38.8857, -78.7830);
    points[74] = CLLocationCoordinate2DMake(38.9327, -78.7198);
    points[75] = CLLocationCoordinate2DMake(38.9071, -78.7129);
    points[76] = CLLocationCoordinate2DMake(38.9850, -78.6291);
    points[77] = CLLocationCoordinate2DMake(38.9658, -78.6044);
    points[78] = CLLocationCoordinate2DMake(39.0170, -78.5522);
    points[79] = CLLocationCoordinate2DMake(39.0384, -78.5770);
    points[80] = CLLocationCoordinate2DMake(39.0938, -78.5083);
    points[81] = CLLocationCoordinate2DMake(39.1492, -78.4314);
    points[82] = CLLocationCoordinate2DMake(39.1684, -78.4039);
    points[83] = CLLocationCoordinate2DMake(39.1939, -78.4314);
    points[84] = CLLocationCoordinate2DMake(39.3470, -78.3380);
    points[85] = CLLocationCoordinate2DMake(39.3853, -78.3380);
    points[86] = CLLocationCoordinate2DMake(39.4659, -78.3469);
    points[87] = CLLocationCoordinate2DMake(39.2283, -77.9744);
    points[88] = CLLocationCoordinate2DMake(39.1338, -77.8302);
    points[89] = CLLocationCoordinate2DMake(39.3130, -77.7355);
    points[90] = CLLocationCoordinate2DMake(39.3202, -77.7159);
    points[91] = CLLocationCoordinate2DMake(39.3067, -77.6321);
    points[92] = CLLocationCoordinate2DMake(39.3051, -77.5666);
    points[93] = CLLocationCoordinate2DMake(39.2269, -77.4577);
    points[94] = CLLocationCoordinate2DMake(39.1804, -77.5092);
    points[95] = CLLocationCoordinate2DMake(39.1218, -77.5202);
    points[96] = CLLocationCoordinate2DMake(39.0792, -77.4636);
    points[97] = CLLocationCoordinate2DMake(39.0717, -77.4351);
    points[98] = CLLocationCoordinate2DMake(39.0634, -77.3431);
    points[99] = CLLocationCoordinate2DMake(39.0240, -77.2462);
    points[100] = CLLocationCoordinate2DMake(38.9773, -77.2335);
    points[101] = CLLocationCoordinate2DMake(38.9570, -77.1395);
    points[102] = CLLocationCoordinate2DMake(38.9025, -77.0708);
    points[103] = CLLocationCoordinate2DMake(38.8451, -77.0320);
    points[104] = CLLocationCoordinate2DMake(38.7766, -77.0416);
    points[105] = CLLocationCoordinate2DMake(38.7187, -77.0361);
    points[106] = CLLocationCoordinate2DMake(38.7112, -77.0760);
    points[107] = CLLocationCoordinate2DMake(38.6737, -77.1378);
    points[108] = CLLocationCoordinate2DMake(38.6373, -77.1281);
    points[109] = CLLocationCoordinate2DMake(38.5954, -77.2490);
    points[110] = CLLocationCoordinate2DMake(38.5514, -77.2737);
    points[111] = CLLocationCoordinate2DMake(38.4525, -77.3135);
    points[112] = CLLocationCoordinate2DMake(38.3320, -77.2627);
    points[113] = CLLocationCoordinate2DMake(38.3697, -77.1432);
    points[114] = CLLocationCoordinate2DMake(38.3697, -77.0897);
    points[115] = CLLocationCoordinate2DMake(38.4009, -77.0430);
    points[116] = CLLocationCoordinate2DMake(38.3761, -77.0114);
    points[117] = CLLocationCoordinate2DMake(38.3093, -77.0306);
    points[118] = CLLocationCoordinate2DMake(38.2748, -76.9908);
    points[119] = CLLocationCoordinate2DMake(38.2080, -76.9482);
    points[120] = CLLocationCoordinate2DMake(38.1637, -76.8494);
    points[121] = CLLocationCoordinate2DMake(38.1670, -76.7601);
    points[122] = CLLocationCoordinate2DMake(38.1616, -76.6928);
    points[123] = CLLocationCoordinate2DMake(38.1464, -76.6063);
    points[124] = CLLocationCoordinate2DMake(38.0751, -76.5363);
    points[125] = CLLocationCoordinate2DMake(38.0275, -76.5170);
    points[126] = CLLocationCoordinate2DMake(38.0146, -76.4703);
    points[127] = CLLocationCoordinate2DMake(37.9669, -76.4154);
    points[128] = CLLocationCoordinate2DMake(37.9474, -76.3454);
    points[129] = CLLocationCoordinate2DMake(37.8889, -76.2396);
    points[130] = CLLocationCoordinate2DMake(37.9529, -76.0584);
    points[131] = CLLocationCoordinate2DMake(37.9464, -75.9430);
    points[132] = CLLocationCoordinate2DMake(37.9095, -75.9512);
    points[133] = CLLocationCoordinate2DMake(37.9117, -75.8084);
    points[134] = CLLocationCoordinate2DMake(37.9529, -75.7288);
    points[135] = CLLocationCoordinate2DMake(37.9464, -75.6436);
    points[136] = CLLocationCoordinate2DMake(37.9951, -75.6230);
    points[137] = CLLocationCoordinate2DMake(37.9962, -75.6079);
    points[138] = CLLocationCoordinate2DMake(38.0275, -75.2316);
    points[139] = CLLocationCoordinate2DMake(38.0200, -74.9721);
    points[140] = CLLocationCoordinate2DMake(37.3625, -75.5777);
    points[141] = CLLocationCoordinate2DMake(36.8994, -75.8180);
    points[142] = CLLocationCoordinate2DMake(36.5516, -75.8043);
    points[143] = CLLocationCoordinate2DMake(36.5516, -76.1476);
    points[144] = CLLocationCoordinate2DMake(36.5516, -76.8617);
    points[145] = CLLocationCoordinate2DMake(36.5516, -76.9180);
    points[146] = CLLocationCoordinate2DMake(36.5438, -76.9180);
    points[147] = CLLocationCoordinate2DMake(36.5505, -77.1803);
    points[148] = CLLocationCoordinate2DMake(36.5449, -77.5278);
    points[149] = CLLocationCoordinate2DMake(36.5427, -80.2730);
    points[150] = CLLocationCoordinate2DMake(36.5571, -80.5971);
    points[151] = CLLocationCoordinate2DMake(36.5626, -80.7248);
    points[152] = CLLocationCoordinate2DMake(36.5593, -80.8511);
    points[153] = CLLocationCoordinate2DMake(36.5681, -81.1066);
    points[154] = CLLocationCoordinate2DMake(36.5813, -81.4746);
    points[155] = CLLocationCoordinate2DMake(36.5802, -81.5007);
    points[156] = CLLocationCoordinate2DMake(36.5882, -81.6773);
    points[157] = CLLocationCoordinate2DMake(36.6122, -81.6476);
    points[158] = CLLocationCoordinate2DMake(36.6177, -81.9237);
    points[159] = CLLocationCoordinate2DMake(36.5935, -81.9360);
    points[160] = CLLocationCoordinate2DMake(36.5957, -82.3961);
    points[161] = CLLocationCoordinate2DMake(36.5935, -82.9344);
    points[162] = CLLocationCoordinate2DMake(36.5957, -83.2654);
    points[163] = CLLocationCoordinate2DMake(36.6023, -83.6746);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:164];
    
    return poly;
}


- (MKPolygon *)polygonForVermont
{
    CLLocationCoordinate2D points[122];
    
    points[0] = CLLocationCoordinate2DMake(45.0104, -73.3427);
    points[1] = CLLocationCoordinate2DMake(45.0134, -73.1827);
    points[2] = CLLocationCoordinate2DMake(45.0153, -72.7432);
    points[3] = CLLocationCoordinate2DMake(45.0134, -72.6100);
    points[4] = CLLocationCoordinate2DMake(45.0075, -72.5551);
    points[5] = CLLocationCoordinate2DMake(45.0090, -72.4562);
    points[6] = CLLocationCoordinate2DMake(45.0037, -72.3113);
    points[7] = CLLocationCoordinate2DMake(45.0066, -72.0964);
    points[8] = CLLocationCoordinate2DMake(45.0070, -71.9131);
    points[9] = CLLocationCoordinate2DMake(45.0138, -71.5636);
    points[10] = CLLocationCoordinate2DMake(45.0138, -71.5059);
    points[11] = CLLocationCoordinate2DMake(44.9862, -71.5443);
    points[12] = CLLocationCoordinate2DMake(44.9697, -71.5237);
    points[13] = CLLocationCoordinate2DMake(44.9366, -71.5182);
    points[14] = CLLocationCoordinate2DMake(44.9123, -71.5018);
    points[15] = CLLocationCoordinate2DMake(44.8744, -71.5279);
    points[16] = CLLocationCoordinate2DMake(44.8539, -71.5553);
    points[17] = CLLocationCoordinate2DMake(44.8325, -71.5526);
    points[18] = CLLocationCoordinate2DMake(44.8198, -71.5746);
    points[19] = CLLocationCoordinate2DMake(44.7526, -71.6364);
    points[20] = CLLocationCoordinate2DMake(44.7243, -71.6130);
    points[21] = CLLocationCoordinate2DMake(44.6608, -71.5924);
    points[22] = CLLocationCoordinate2DMake(44.6315, -71.5540);
    points[23] = CLLocationCoordinate2DMake(44.5993, -71.5649);
    points[24] = CLLocationCoordinate2DMake(44.5914, -71.5485);
    points[25] = CLLocationCoordinate2DMake(44.5680, -71.5649);
    points[26] = CLLocationCoordinate2DMake(44.5680, -71.5897);
    points[27] = CLLocationCoordinate2DMake(44.5601, -71.6048);
    points[28] = CLLocationCoordinate2DMake(44.5357, -71.5746);
    points[29] = CLLocationCoordinate2DMake(44.5073, -71.5855);
    points[30] = CLLocationCoordinate2DMake(44.4642, -71.6542);
    points[31] = CLLocationCoordinate2DMake(44.4416, -71.6597);
    points[32] = CLLocationCoordinate2DMake(44.4122, -71.7380);
    points[33] = CLLocationCoordinate2DMake(44.4014, -71.7778);
    points[34] = CLLocationCoordinate2DMake(44.3877, -71.8108);
    points[35] = CLLocationCoordinate2DMake(44.3572, -71.8135);
    points[36] = CLLocationCoordinate2DMake(44.3366, -71.8712);
    points[37] = CLLocationCoordinate2DMake(44.3592, -71.9289);
    points[38] = CLLocationCoordinate2DMake(44.3376, -71.9783);
    points[39] = CLLocationCoordinate2DMake(44.3199, -72.0291);
    points[40] = CLLocationCoordinate2DMake(44.2796, -72.0607);
    points[41] = CLLocationCoordinate2DMake(44.2511, -72.0525);
    points[42] = CLLocationCoordinate2DMake(44.1999, -72.0703);
    points[43] = CLLocationCoordinate2DMake(44.1763, -72.0580);
    points[44] = CLLocationCoordinate2DMake(44.1428, -72.0387);
    points[45] = CLLocationCoordinate2DMake(44.1093, -72.0552);
    points[46] = CLLocationCoordinate2DMake(44.0856, -72.0470);
    points[47] = CLLocationCoordinate2DMake(44.0017, -72.1170);
    points[48] = CLLocationCoordinate2DMake(43.9454, -72.1198);
    points[49] = CLLocationCoordinate2DMake(43.9117, -72.1321);
    points[50] = CLLocationCoordinate2DMake(43.8890, -72.1568);
    points[51] = CLLocationCoordinate2DMake(43.8672, -72.1843);
    points[52] = CLLocationCoordinate2DMake(43.8187, -72.1870);
    points[53] = CLLocationCoordinate2DMake(43.7741, -72.2035);
    points[54] = CLLocationCoordinate2DMake(43.7344, -72.2694);
    points[55] = CLLocationCoordinate2DMake(43.7036, -72.3079);
    points[56] = CLLocationCoordinate2DMake(43.6758, -72.3024);
    points[57] = CLLocationCoordinate2DMake(43.6420, -72.3134);
    points[58] = CLLocationCoordinate2DMake(43.5834, -72.3779);
    points[59] = CLLocationCoordinate2DMake(43.5127, -72.4013);
    points[60] = CLLocationCoordinate2DMake(43.4988, -72.3807);
    points[61] = CLLocationCoordinate2DMake(43.3741, -72.4150);
    points[62] = CLLocationCoordinate2DMake(43.2812, -72.4095);
    points[63] = CLLocationCoordinate2DMake(43.2562, -72.4384);
    points[64] = CLLocationCoordinate2DMake(43.2052, -72.4329);
    points[65] = CLLocationCoordinate2DMake(43.1501, -72.4590);
    points[66] = CLLocationCoordinate2DMake(43.1180, -72.4342);
    points[67] = CLLocationCoordinate2DMake(43.1040, -72.4452);
    points[68] = CLLocationCoordinate2DMake(43.0819, -72.4356);
    points[69] = CLLocationCoordinate2DMake(43.0508, -72.4713);
    points[70] = CLLocationCoordinate2DMake(43.0287, -72.4713);
    points[71] = CLLocationCoordinate2DMake(43.0127, -72.4480);
    points[72] = CLLocationCoordinate2DMake(42.9906, -72.4658);
    points[73] = CLLocationCoordinate2DMake(42.9745, -72.4919);
    points[74] = CLLocationCoordinate2DMake(42.9524, -72.5400);
    points[75] = CLLocationCoordinate2DMake(42.8981, -72.5317);
    points[76] = CLLocationCoordinate2DMake(42.8609, -72.5592);
    points[77] = CLLocationCoordinate2DMake(42.8105, -72.5414);
    points[78] = CLLocationCoordinate2DMake(42.7621, -72.5098);
    points[79] = CLLocationCoordinate2DMake(42.7268, -72.4590);
    points[80] = CLLocationCoordinate2DMake(42.7465, -73.2761);
    points[81] = CLLocationCoordinate2DMake(42.8025, -73.2912);
    points[82] = CLLocationCoordinate2DMake(42.8357, -73.2850);
    points[83] = CLLocationCoordinate2DMake(43.0679, -73.2678);
    points[84] = CLLocationCoordinate2DMake(43.5022, -73.2472);
    points[85] = CLLocationCoordinate2DMake(43.5615, -73.2561);
    points[86] = CLLocationCoordinate2DMake(43.5774, -73.2939);
    points[87] = CLLocationCoordinate2DMake(43.6271, -73.3049);
    points[88] = CLLocationCoordinate2DMake(43.6271, -73.3557);
    points[89] = CLLocationCoordinate2DMake(43.5675, -73.3976);
    points[90] = CLLocationCoordinate2DMake(43.5883, -73.4326);
    points[91] = CLLocationCoordinate2DMake(43.6351, -73.4285);
    points[92] = CLLocationCoordinate2DMake(43.6684, -73.4079);
    points[93] = CLLocationCoordinate2DMake(43.7031, -73.3907);
    points[94] = CLLocationCoordinate2DMake(43.7701, -73.3516);
    points[95] = CLLocationCoordinate2DMake(43.8207, -73.3928);
    points[96] = CLLocationCoordinate2DMake(43.8533, -73.3832);
    points[97] = CLLocationCoordinate2DMake(43.9033, -73.3969);
    points[98] = CLLocationCoordinate2DMake(43.9365, -73.4086);
    points[99] = CLLocationCoordinate2DMake(43.9795, -73.4134);
    points[100] = CLLocationCoordinate2DMake(44.0427, -73.4381);
    points[101] = CLLocationCoordinate2DMake(44.1058, -73.4141);
    points[102] = CLLocationCoordinate2DMake(44.1921, -73.3928);
    points[103] = CLLocationCoordinate2DMake(44.2393, -73.3427);
    points[104] = CLLocationCoordinate2DMake(44.2467, -73.3186);
    points[105] = CLLocationCoordinate2DMake(44.3484, -73.3406);
    points[106] = CLLocationCoordinate2DMake(44.3690, -73.3385);
    points[107] = CLLocationCoordinate2DMake(44.4328, -73.2946);
    points[108] = CLLocationCoordinate2DMake(44.5367, -73.3296);
    points[109] = CLLocationCoordinate2DMake(44.5919, -73.3832);
    points[110] = CLLocationCoordinate2DMake(44.6569, -73.3770);
    points[111] = CLLocationCoordinate2DMake(44.7477, -73.3681);
    points[112] = CLLocationCoordinate2DMake(44.7857, -73.3317);
    points[113] = CLLocationCoordinate2DMake(44.8043, -73.3324);
    points[114] = CLLocationCoordinate2DMake(44.8398, -73.3818);
    points[115] = CLLocationCoordinate2DMake(44.9040, -73.3564);
    points[116] = CLLocationCoordinate2DMake(44.9181, -73.3392);
    points[117] = CLLocationCoordinate2DMake(44.9643, -73.3372);
    points[118] = CLLocationCoordinate2DMake(44.9799, -73.3537);
    points[119] = CLLocationCoordinate2DMake(45.0046, -73.3447);
    points[120] = CLLocationCoordinate2DMake(45.0109, -73.3447);
    points[121] = CLLocationCoordinate2DMake(45.0104, -73.3426);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:122];
    
    return poly;
}


- (MKPolygon *)polygonForWashington
{
    CLLocationCoordinate2D points[123];
    
    points[0] = CLLocationCoordinate2DMake(49.0023, -123.3208);
    points[1] = CLLocationCoordinate2DMake(49.0027, -123.0338);
    points[2] = CLLocationCoordinate2DMake(49.0018, -122.0650);
    points[3] = CLLocationCoordinate2DMake(48.9973, -121.7491);
    points[4] = CLLocationCoordinate2DMake(48.9991, -121.5912);
    points[5] = CLLocationCoordinate2DMake(49.0009, -119.6082);
    points[6] = CLLocationCoordinate2DMake(49.0005, -118.0378);
    points[7] = CLLocationCoordinate2DMake(48.9991, -117.0323);
    points[8] = CLLocationCoordinate2DMake(47.9614, -117.0415);
    points[9] = CLLocationCoordinate2DMake(46.5060, -117.0394);
    points[10] = CLLocationCoordinate2DMake(46.4274, -117.0394);
    points[11] = CLLocationCoordinate2DMake(46.3498, -117.0621);
    points[12] = CLLocationCoordinate2DMake(46.3384, -117.0277);
    points[13] = CLLocationCoordinate2DMake(46.2848, -116.9879);
    points[14] = CLLocationCoordinate2DMake(46.2388, -116.9577);
    points[15] = CLLocationCoordinate2DMake(46.2022, -116.9659);
    points[16] = CLLocationCoordinate2DMake(46.1722, -116.9254);
    points[17] = CLLocationCoordinate2DMake(46.1432, -116.9357);
    points[18] = CLLocationCoordinate2DMake(46.1009, -116.9584);
    points[19] = CLLocationCoordinate2DMake(46.0785, -116.9762);
    points[20] = CLLocationCoordinate2DMake(46.0537, -116.9433);
    points[21] = CLLocationCoordinate2DMake(45.9960, -116.9165);
    points[22] = CLLocationCoordinate2DMake(46.0008, -118.0330);
    points[23] = CLLocationCoordinate2DMake(45.9998, -118.9867);
    points[24] = CLLocationCoordinate2DMake(45.9320, -119.1302);
    points[25] = CLLocationCoordinate2DMake(45.9278, -119.1708);
    points[26] = CLLocationCoordinate2DMake(45.9402, -119.2559);
    points[27] = CLLocationCoordinate2DMake(45.9354, -119.3047);
    points[28] = CLLocationCoordinate2DMake(45.9220, -119.3644);
    points[29] = CLLocationCoordinate2DMake(45.9172, -119.4386);
    points[30] = CLLocationCoordinate2DMake(45.9067, -119.4894);
    points[31] = CLLocationCoordinate2DMake(45.9249, -119.5724);
    points[32] = CLLocationCoordinate2DMake(45.9196, -119.6013);
    points[33] = CLLocationCoordinate2DMake(45.8565, -119.6700);
    points[34] = CLLocationCoordinate2DMake(45.8479, -119.8052);
    points[35] = CLLocationCoordinate2DMake(45.8278, -119.9096);
    points[36] = CLLocationCoordinate2DMake(45.8245, -119.9652);
    points[37] = CLLocationCoordinate2DMake(45.7852, -120.0710);
    points[38] = CLLocationCoordinate2DMake(45.7623, -120.1705);
    points[39] = CLLocationCoordinate2DMake(45.7258, -120.2110);
    points[40] = CLLocationCoordinate2DMake(45.7057, -120.3628);
    points[41] = CLLocationCoordinate2DMake(45.6951, -120.4829);
    points[42] = CLLocationCoordinate2DMake(45.7469, -120.5942);
    points[43] = CLLocationCoordinate2DMake(45.7460, -120.6340);
    points[44] = CLLocationCoordinate2DMake(45.7143, -120.6924);
    points[45] = CLLocationCoordinate2DMake(45.6721, -120.8558);
    points[46] = CLLocationCoordinate2DMake(45.6409, -120.9142);
    points[47] = CLLocationCoordinate2DMake(45.6572, -120.9471);
    points[48] = CLLocationCoordinate2DMake(45.6419, -120.9787);
    points[49] = CLLocationCoordinate2DMake(45.6529, -121.0645);
    points[50] = CLLocationCoordinate2DMake(45.6078, -121.1469);
    points[51] = CLLocationCoordinate2DMake(45.6083, -121.1847);
    points[52] = CLLocationCoordinate2DMake(45.6721, -121.2177);
    points[53] = CLLocationCoordinate2DMake(45.7057, -121.3392);
    points[54] = CLLocationCoordinate2DMake(45.6932, -121.4010);
    points[55] = CLLocationCoordinate2DMake(45.7263, -121.5328);
    points[56] = CLLocationCoordinate2DMake(45.7091, -121.6145);
    points[57] = CLLocationCoordinate2DMake(45.6947, -121.7361);
    points[58] = CLLocationCoordinate2DMake(45.7067, -121.8095);
    points[59] = CLLocationCoordinate2DMake(45.6452, -121.9338);
    points[60] = CLLocationCoordinate2DMake(45.6088, -122.0451);
    points[61] = CLLocationCoordinate2DMake(45.5833, -122.1089);
    points[62] = CLLocationCoordinate2DMake(45.5838, -122.1426);
    points[63] = CLLocationCoordinate2DMake(45.5660, -122.2009);
    points[64] = CLLocationCoordinate2DMake(45.5439, -122.2641);
    points[65] = CLLocationCoordinate2DMake(45.5482, -122.3321);
    points[66] = CLLocationCoordinate2DMake(45.5756, -122.3795);
    points[67] = CLLocationCoordinate2DMake(45.5636, -122.4392);
    points[68] = CLLocationCoordinate2DMake(45.6006, -122.5676);
    points[69] = CLLocationCoordinate2DMake(45.6236, -122.6891);
    points[70] = CLLocationCoordinate2DMake(45.6582, -122.7647);
    points[71] = CLLocationCoordinate2DMake(45.6817, -122.7750);
    points[72] = CLLocationCoordinate2DMake(45.7613, -122.7619);
    points[73] = CLLocationCoordinate2DMake(45.8106, -122.7962);
    points[74] = CLLocationCoordinate2DMake(45.8642, -122.7839);
    points[75] = CLLocationCoordinate2DMake(45.9120, -122.8114);
    points[76] = CLLocationCoordinate2DMake(45.9612, -122.8148);
    points[77] = CLLocationCoordinate2DMake(46.0160, -122.8587);
    points[78] = CLLocationCoordinate2DMake(46.0604, -122.8848);
    points[79] = CLLocationCoordinate2DMake(46.0832, -122.9034);
    points[80] = CLLocationCoordinate2DMake(46.1028, -122.9597);
    points[81] = CLLocationCoordinate2DMake(46.1556, -123.0579);
    points[82] = CLLocationCoordinate2DMake(46.1865, -123.1210);
    points[83] = CLLocationCoordinate2DMake(46.1893, -123.1664);
    points[84] = CLLocationCoordinate2DMake(46.1446, -123.2810);
    points[85] = CLLocationCoordinate2DMake(46.1470, -123.3703);
    points[86] = CLLocationCoordinate2DMake(46.1822, -123.4314);
    points[87] = CLLocationCoordinate2DMake(46.2293, -123.4287);
    points[88] = CLLocationCoordinate2DMake(46.2691, -123.4946);
    points[89] = CLLocationCoordinate2DMake(46.2582, -123.5557);
    points[90] = CLLocationCoordinate2DMake(46.2573, -123.6209);
    points[91] = CLLocationCoordinate2DMake(46.2497, -123.6875);
    points[92] = CLLocationCoordinate2DMake(46.2691, -123.7404);
    points[93] = CLLocationCoordinate2DMake(46.2350, -123.8729);
    points[94] = CLLocationCoordinate2DMake(46.2383, -123.9292);
    points[95] = CLLocationCoordinate2DMake(46.2677, -123.9711);
    points[96] = CLLocationCoordinate2DMake(46.2924, -124.0212);
    points[97] = CLLocationCoordinate2DMake(46.2653, -124.0329);
    points[98] = CLLocationCoordinate2DMake(46.2596, -124.2444);
    points[99] = CLLocationCoordinate2DMake(46.4312, -124.2691);
    points[100] = CLLocationCoordinate2DMake(46.8386, -124.3529);
    points[101] = CLLocationCoordinate2DMake(47.1832, -124.4380);
    points[102] = CLLocationCoordinate2DMake(47.4689, -124.5616);
    points[103] = CLLocationCoordinate2DMake(47.8012, -124.7566);
    points[104] = CLLocationCoordinate2DMake(48.0423, -124.8679);
    points[105] = CLLocationCoordinate2DMake(48.2457, -124.8679);
    points[106] = CLLocationCoordinate2DMake(48.3727, -124.8486);
    points[107] = CLLocationCoordinate2DMake(48.4984, -124.7539);
    points[108] = CLLocationCoordinate2DMake(48.4096, -124.4174);
    points[109] = CLLocationCoordinate2DMake(48.3599, -124.2389);
    points[110] = CLLocationCoordinate2DMake(48.2964, -124.0116);
    points[111] = CLLocationCoordinate2DMake(48.2795, -123.9141);
    points[112] = CLLocationCoordinate2DMake(48.2247, -123.5413);
    points[113] = CLLocationCoordinate2DMake(48.2539, -123.3998);
    points[114] = CLLocationCoordinate2DMake(48.2841, -123.2501);
    points[115] = CLLocationCoordinate2DMake(48.4233, -123.1169);
    points[116] = CLLocationCoordinate2DMake(48.4533, -123.1609);
    points[117] = CLLocationCoordinate2DMake(48.5548, -123.2220);
    points[118] = CLLocationCoordinate2DMake(48.5902, -123.2336);
    points[119] = CLLocationCoordinate2DMake(48.6901, -123.2721);
    points[120] = CLLocationCoordinate2DMake(48.7675, -123.0084);
    points[121] = CLLocationCoordinate2DMake(48.8313, -123.0084);
    points[122] = CLLocationCoordinate2DMake(49.0023, -123.3215);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:123];
    
    return poly;
}


- (MKPolygon *)polygonForWisconsin
{
    CLLocationCoordinate2D points[65];
    
    points[0] = CLLocationCoordinate2DMake(42.5116, -90.6303);
    points[1] = CLLocationCoordinate2DMake(42.4954, -87.0241);
    points[2] = CLLocationCoordinate2DMake(43.3721, -87.1477);
    points[3] = CLLocationCoordinate2DMake(43.6838, -87.1230);
    points[4] = CLLocationCoordinate2DMake(44.1694, -86.9911);
    points[5] = CLLocationCoordinate2DMake(44.4828, -86.8579);
    points[6] = CLLocationCoordinate2DMake(44.8792, -86.6876);
    points[7] = CLLocationCoordinate2DMake(45.2343, -86.2523);
    points[8] = CLLocationCoordinate2DMake(45.4418, -86.7535);
    points[9] = CLLocationCoordinate2DMake(45.4438, -87.1024);
    points[10] = CLLocationCoordinate2DMake(45.3531, -87.1724);
    points[11] = CLLocationCoordinate2DMake(45.2353, -86.2495);
    points[12] = CLLocationCoordinate2DMake(45.1995, -87.4100);
    points[13] = CLLocationCoordinate2DMake(45.0784, -87.4443);
    points[14] = CLLocationCoordinate2DMake(45.0987, -87.6379);
    points[15] = CLLocationCoordinate2DMake(45.2217, -87.6956);
    points[16] = CLLocationCoordinate2DMake(45.3367, -87.6462);
    points[17] = CLLocationCoordinate2DMake(45.3869, -87.6956);
    points[18] = CLLocationCoordinate2DMake(45.3425, -87.8549);
    points[19] = CLLocationCoordinate2DMake(45.4813, -87.7945);
    points[20] = CLLocationCoordinate2DMake(45.5679, -87.7945);
    points[21] = CLLocationCoordinate2DMake(45.6764, -87.7876);
    points[22] = CLLocationCoordinate2DMake(45.7934, -87.9936);
    points[23] = CLLocationCoordinate2DMake(45.8077, -88.1145);
    points[24] = CLLocationCoordinate2DMake(45.8728, -88.0733);
    points[25] = CLLocationCoordinate2DMake(45.9521, -88.1982);
    points[26] = CLLocationCoordinate2DMake(46.0122, -88.5498);
    points[27] = CLLocationCoordinate2DMake(45.9970, -88.7036);
    points[28] = CLLocationCoordinate2DMake(46.0380, -88.8451);
    points[29] = CLLocationCoordinate2DMake(46.1389, -89.0909);
    points[30] = CLLocationCoordinate2DMake(46.3412, -90.1195);
    points[31] = CLLocationCoordinate2DMake(46.5664, -90.4147);
    points[32] = CLLocationCoordinate2DMake(47.2876, -89.9615);
    points[33] = CLLocationCoordinate2DMake(47.3100, -90.6578);
    points[34] = CLLocationCoordinate2DMake(46.7079, -92.0352);
    points[35] = CLLocationCoordinate2DMake(46.5928, -92.2948);
    points[36] = CLLocationCoordinate2DMake(46.0761, -92.2975);
    points[37] = CLLocationCoordinate2DMake(46.0132, -92.3579);
    points[38] = CLLocationCoordinate2DMake(45.9769, -92.5227);
    points[39] = CLLocationCoordinate2DMake(45.8135, -92.7466);
    points[40] = CLLocationCoordinate2DMake(45.6140, -92.8564);
    points[41] = CLLocationCoordinate2DMake(45.5477, -92.7754);
    points[42] = CLLocationCoordinate2DMake(45.4293, -92.6587);
    points[43] = CLLocationCoordinate2DMake(45.3029, -92.7136);
    points[44] = CLLocationCoordinate2DMake(44.9648, -92.7466);
    points[45] = CLLocationCoordinate2DMake(44.7877, -92.7686);
    points[46] = CLLocationCoordinate2DMake(44.6530, -92.6422);
    points[47] = CLLocationCoordinate2DMake(44.5504, -92.3552);
    points[48] = CLLocationCoordinate2DMake(44.4652, -92.2632);
    points[49] = CLLocationCoordinate2DMake(44.4024, -92.0654);
    points[50] = CLLocationCoordinate2DMake(44.2580, -91.8745);
    points[51] = CLLocationCoordinate2DMake(44.0600, -91.6383);
    points[52] = CLLocationCoordinate2DMake(43.9612, -91.4941);
    points[53] = CLLocationCoordinate2DMake(43.8296, -91.3184);
    points[54] = CLLocationCoordinate2DMake(43.6440, -91.2524);
    points[55] = CLLocationCoordinate2DMake(43.5167, -91.2305);
    points[56] = CLLocationCoordinate2DMake(43.3342, -91.2085);
    points[57] = CLLocationCoordinate2DMake(43.2932, -91.0547);
    points[58] = CLLocationCoordinate2DMake(43.1651, -91.1865);
    points[59] = CLLocationCoordinate2DMake(43.0257, -91.1536);
    points[60] = CLLocationCoordinate2DMake(42.9082, -91.1426);
    points[61] = CLLocationCoordinate2DMake(42.7692, -91.0547);
    points[62] = CLLocationCoordinate2DMake(42.6915, -90.7910);
    points[63] = CLLocationCoordinate2DMake(42.6340, -90.7031);
    points[64] = CLLocationCoordinate2DMake(42.5096, -90.6303);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:65];
    
    return poly;
}


- (MKPolygon *)polygonForWest_Virginia
{
    CLLocationCoordinate2D points[95];
    
    points[0] = CLLocationCoordinate2DMake(39.7188, -79.4765);
    points[1] = CLLocationCoordinate2DMake(39.2057, -79.4806);
    points[2] = CLLocationCoordinate2DMake(39.4871, -79.0576);
    points[3] = CLLocationCoordinate2DMake(39.4394, -78.9725);
    points[4] = CLLocationCoordinate2DMake(39.6438, -78.7747);
    points[5] = CLLocationCoordinate2DMake(39.5369, -78.6703);
    points[6] = CLLocationCoordinate2DMake(39.5210, -78.5742);
    points[7] = CLLocationCoordinate2DMake(39.5210, -78.4644);
    points[8] = CLLocationCoordinate2DMake(39.6015, -78.4094);
    points[9] = CLLocationCoordinate2DMake(39.6395, -78.3517);
    points[10] = CLLocationCoordinate2DMake(39.6205, -78.2817);
    points[11] = CLLocationCoordinate2DMake(39.6839, -78.2405);
    points[12] = CLLocationCoordinate2DMake(39.6935, -78.1732);
    points[13] = CLLocationCoordinate2DMake(39.5972, -77.8835);
    points[14] = CLLocationCoordinate2DMake(39.4987, -77.7859);
    points[15] = CLLocationCoordinate2DMake(39.3279, -77.7310);
    points[16] = CLLocationCoordinate2DMake(39.1279, -77.8271);
    points[17] = CLLocationCoordinate2DMake(39.4563, -78.3421);
    points[18] = CLLocationCoordinate2DMake(39.3407, -78.3408);
    points[19] = CLLocationCoordinate2DMake(39.1918, -78.4341);
    points[20] = CLLocationCoordinate2DMake(39.1652, -78.4053);
    points[21] = CLLocationCoordinate2DMake(39.0299, -78.5715);
    points[22] = CLLocationCoordinate2DMake(39.0160, -78.5522);
    points[23] = CLLocationCoordinate2DMake(38.8846, -78.7843);
    points[24] = CLLocationCoordinate2DMake(38.7669, -78.8722);
    points[25] = CLLocationCoordinate2DMake(38.8451, -78.9917);
    points[26] = CLLocationCoordinate2DMake(38.7102, -79.0974);
    points[27] = CLLocationCoordinate2DMake(38.6555, -79.1029);
    points[28] = CLLocationCoordinate2DMake(38.4106, -79.3007);
    points[29] = CLLocationCoordinate2DMake(38.4600, -79.4792);
    points[30] = CLLocationCoordinate2DMake(38.5342, -79.5314);
    points[31] = CLLocationCoordinate2DMake(38.5868, -79.6481);
    points[32] = CLLocationCoordinate2DMake(38.4869, -79.6962);
    points[33] = CLLocationCoordinate2DMake(38.4213, -79.6989);
    points[34] = CLLocationCoordinate2DMake(38.3557, -79.7690);
    points[35] = CLLocationCoordinate2DMake(38.2813, -79.7937);
    points[36] = CLLocationCoordinate2DMake(38.1518, -79.9365);
    points[37] = CLLocationCoordinate2DMake(38.0232, -79.9818);
    points[38] = CLLocationCoordinate2DMake(37.8835, -80.1370);
    points[39] = CLLocationCoordinate2DMake(37.7295, -80.2592);
    points[40] = CLLocationCoordinate2DMake(37.6795, -80.2881);
    points[41] = CLLocationCoordinate2DMake(37.6295, -80.2194);
    points[42] = CLLocationCoordinate2DMake(37.5391, -80.3224);
    points[43] = CLLocationCoordinate2DMake(37.5315, -80.2881);
    points[44] = CLLocationCoordinate2DMake(37.4988, -80.3032);
    points[45] = CLLocationCoordinate2DMake(37.4182, -80.4776);
    points[46] = CLLocationCoordinate2DMake(37.4814, -80.5119);
    points[47] = CLLocationCoordinate2DMake(37.3691, -80.7715);
    points[48] = CLLocationCoordinate2DMake(37.4214, -80.8635);
    points[49] = CLLocationCoordinate2DMake(37.3429, -80.8525);
    points[50] = CLLocationCoordinate2DMake(37.2872, -81.0516);
    points[51] = CLLocationCoordinate2DMake(37.2598, -81.2741);
    points[52] = CLLocationCoordinate2DMake(37.3254, -81.3675);
    points[53] = CLLocationCoordinate2DMake(37.2019, -81.5543);
    points[54] = CLLocationCoordinate2DMake(37.1953, -81.6724);
    points[55] = CLLocationCoordinate2DMake(37.2697, -81.7685);
    points[56] = CLLocationCoordinate2DMake(37.3003, -81.8701);
    points[57] = CLLocationCoordinate2DMake(37.3636, -81.9333);
    points[58] = CLLocationCoordinate2DMake(37.4574, -81.9772);
    points[59] = CLLocationCoordinate2DMake(37.4912, -82.0308);
    points[60] = CLLocationCoordinate2DMake(37.6142, -82.1558);
    points[61] = CLLocationCoordinate2DMake(37.8054, -82.3535);
    points[62] = CLLocationCoordinate2DMake(38.0481, -82.5513);
    points[63] = CLLocationCoordinate2DMake(38.1864, -82.6392);
    points[64] = CLLocationCoordinate2DMake(38.3761, -82.5966);
    points[65] = CLLocationCoordinate2DMake(38.4106, -82.4854);
    points[66] = CLLocationCoordinate2DMake(38.4407, -82.3412);
    points[67] = CLLocationCoordinate2DMake(38.5890, -82.2876);
    points[68] = CLLocationCoordinate2DMake(38.5976, -82.1764);
    points[69] = CLLocationCoordinate2DMake(38.7980, -82.2148);
    points[70] = CLLocationCoordinate2DMake(39.0160, -82.0280);
    points[71] = CLLocationCoordinate2DMake(38.9615, -81.9649);
    points[72] = CLLocationCoordinate2DMake(38.8750, -81.8756);
    points[73] = CLLocationCoordinate2DMake(38.9370, -81.7671);
    points[74] = CLLocationCoordinate2DMake(39.0117, -81.7657);
    points[75] = CLLocationCoordinate2DMake(39.0800, -81.7520);
    points[76] = CLLocationCoordinate2DMake(39.1790, -81.7465);
    points[77] = CLLocationCoordinate2DMake(39.2642, -81.5872);
    points[78] = CLLocationCoordinate2DMake(39.3969, -81.4499);
    points[79] = CLLocationCoordinate2DMake(39.3481, -81.3675);
    points[80] = CLLocationCoordinate2DMake(39.4012, -81.2370);
    points[81] = CLLocationCoordinate2DMake(39.4691, -81.1093);
    points[82] = CLLocationCoordinate2DMake(39.5644, -81.0104);
    points[83] = CLLocationCoordinate2DMake(39.6120, -80.9198);
    points[84] = CLLocationCoordinate2DMake(39.6522, -80.8319);
    points[85] = CLLocationCoordinate2DMake(39.8054, -80.8072);
    points[86] = CLLocationCoordinate2DMake(39.8802, -80.7893);
    points[87] = CLLocationCoordinate2DMake(39.8518, -80.7990);
    points[88] = CLLocationCoordinate2DMake(40.0980, -80.7495);
    points[89] = CLLocationCoordinate2DMake(40.2282, -80.7262);
    points[90] = CLLocationCoordinate2DMake(40.3926, -80.6918);
    points[91] = CLLocationCoordinate2DMake(40.5910, -80.6451);
    points[92] = CLLocationCoordinate2DMake(40.6338, -80.5188);
    points[93] = CLLocationCoordinate2DMake(39.7241, -80.5174);
    points[94] = CLLocationCoordinate2DMake(39.7209, -79.4778);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:95];
    
    return poly;
}


- (MKPolygon *)polygonForWyoming
{
    CLLocationCoordinate2D points[5];
    
    points[0] = CLLocationCoordinate2DMake(44.9998, -111.0539);
    points[1] = CLLocationCoordinate2DMake(44.9970, -104.0577);
    points[2] = CLLocationCoordinate2DMake(43.0026, -104.0529);
    points[3] = CLLocationCoordinate2DMake(41.0006, -104.0529);
    points[4] = CLLocationCoordinate2DMake(40.9986, -111.0457);
    
    MKPolygon* poly = [MKPolygon polygonWithCoordinates:points count:5];
    
    return poly;
}



@end
