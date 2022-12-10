untyped


global function Floppytown_MapInit_Map

const vector MAP_OFFSET = < 2000, 2000, 6000 >

const asset NESSY_MODEL = $"mdl/domestic/nessy_doll.rmdl"


void function Floppytown_MapInit_Map()
{
    AddCallback_EntitiesDidLoad( Floppytown )
    AddCallback_EntitiesDidLoad( Zipline )
    AddCallback_EntitiesDidLoad( Nessy )
}

void function Floppytown()
{
    var dataTable = GetDataTable( $"datatable/mp_rr_floppytown.rpak" )
    int numRows = GetDatatableRowCount( dataTable )
    vector startingorg = MAP_OFFSET

    int originColumn = GetDataTableColumnByName( dataTable, "origin" )
    int anglesColumn = GetDataTableColumnByName( dataTable, "angles" )
    int scaleColumn = GetDataTableColumnByName( dataTable, "scale" )
    int fadeColumn = GetDataTableColumnByName( dataTable, "fade" )
    int mantleColumn = GetDataTableColumnByName( dataTable, "mantle" )
    int mdlColumn = GetDataTableColumnByName( dataTable, "mdl" )


    for ( int i = 0 ; i < numRows; i++ )
    {
        vector origin = GetDataTableVector( dataTable, i, originColumn )
        vector angles = GetDataTableVector( dataTable, i, anglesColumn )
        float scale = GetDataTableFloat( dataTable, i, scaleColumn )
        float fade = GetDataTableFloat( dataTable, i, fadeColumn )
        bool mantle = GetDataTableBool( dataTable, i, mantleColumn )
        asset mdl = GetDataTableAsset( dataTable, i, mdlColumn )

        MapEditor_CreateProp( mdl, origin + startingorg, angles, mantle, fade, -1, scale )
    }
}

void function Zipline()
{
    vector startingorg = MAP_OFFSET

    //VerticalZipLines 
    MapEditor_CreateZiplineFromUnity( < 1240.6700, 791.3401, 1450.1200 > + startingorg, < 0.0000, -120.0000, 0.0000 >, < 1240.6700, 791.3401, 35.0000 > + startingorg, < 0.0000, -120.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 672.3999, 227.5999, 1450.1200 > + startingorg, < 0.0000, 30.0000, 0.0000 >, < 672.3999, 227.5999, 35.0000 > + startingorg, < 0.0000, 30.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 1548.5500, 100.8000, 1450.1200 > + startingorg, < 0.0000, 150.0000, 0.0000 >, < 1548.5500, 100.8000, 35.0000 > + startingorg, < 0.0000, 150.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -2695.0000, 260.8000, 680.8650 > + startingorg, < 0.0000, -150.0000, 0.0000 >, < -2695.0000, 260.8000, 35.0000 > + startingorg, < 0.0000, -150.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -911.0427, -2297.1990, 2219.3910 > + startingorg, < 0.0000, 0.0000, 0.0000 >, < -911.0427, -2297.1990, 1675.2080 > + startingorg, < 0.0000, 0.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 259.2369, -1990.7110, 2218.5920 > + startingorg, < 0.0000, -60.0000, 0.0000 >, < 259.2369, -1990.7110, 1346.2260 > + startingorg, < 0.0000, -60.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 1862.6500, 1108.2000, 1193.0960 > + startingorg, < 0.0000, 120.0000, 0.0000 >, < 1862.6500, 1108.2000, 35.0000 > + startingorg, < 0.0000, 120.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 1036.8500, 1916.2000, 1193.0960 > + startingorg, < 0.0000, -30.0000, 0.0000 >, < 1036.8500, 1916.2000, 35.0000 > + startingorg, < 0.0000, -30.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -668.2302, -1334.8000, 1447.8000 > + startingorg, < 0.0000, 30.0000, 0.0000 >, < -668.2302, -1334.8000, 35.0000 > + startingorg, < 0.0000, 30.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 147.1999, -1084.5000, 1447.8000 > + startingorg, < 0.0000, -60.0000, 0.0000 >, < 147.1999, -1084.5000, 35.0000 > + startingorg, < 0.0000, -60.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 861.6000, -885.0999, 1447.8000 > + startingorg, < 0.0000, -30.0000, 0.0000 >, < 861.6000, -885.0999, 35.0000 > + startingorg, < 0.0000, -30.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 1353.2100, -1387.6600, 1447.8000 > + startingorg, < 0.0000, 150.0000, 0.0000 >, < 1353.2100, -1387.6600, 35.0000 > + startingorg, < 0.0000, 150.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -192.9503, -2132.8000, 1808.2080 > + startingorg, < 0.0000, -120.0000, 0.0000 >, < -192.9503, -2132.8000, 35.0000 > + startingorg, < 0.0000, -120.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 1808.0000, -614.8326, 1450.1200 > + startingorg, < 0.0000, 36.0000, 0.0000 >, < 1808.0000, -614.8326, 35.0000 > + startingorg, < 0.0000, 36.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -2109.9990, -1994.0010, 2586.0000 > + startingorg, < 0.0000, -90.0000, 0.0000 >, < -2109.9990, -1994.0010, 0.0000 > + startingorg, < 0.0000, -90.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 100, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -148.7000, 162.4100, 1448.0000 > + startingorg, < 0.0000, -120.0000, 0.0000 >, < -148.7000, 162.4100, 35.0000 > + startingorg, < 0.0000, -120.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -782.2000, -470.0400, 1448.0000 > + startingorg, < 0.0000, 60.0000, 0.0000 >, < -782.2000, -470.0400, 896.0000 > + startingorg, < 0.0000, 60.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -1159.9990, 2065.5000, 1963.9940 > + startingorg, < 0.0000, -30.0000, 0.0000 >, < -1159.9990, 2065.5000, 35.0000 > + startingorg, < 0.0000, -30.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -2874.4000, -1736.6000, 2475.4550 > + startingorg, < 0.0000, -60.0000, 0.0000 >, < -2874.4000, -1736.6000, 1829.9670 > + startingorg, < 0.0000, -60.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 126.9010, 1901.1000, 1959.9940 > + startingorg, < 0.0000, -150.0000, 0.0000 >, < 126.9010, 1901.1000, 35.0000 > + startingorg, < 0.0000, -150.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 1089.4950, -2247.3590, 1450.1200 > + startingorg, < 0.0000, -60.0000, 0.0000 >, < 1089.4950, -2247.3590, 769.2717 > + startingorg, < 0.0000, -60.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 2059.2990, 1742.7030, 1959.9680 > + startingorg, < 0.0000, -25.0000, 0.0000 >, < 2059.2990, 1742.7030, 1061.0960 > + startingorg, < 0.0000, -25.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -2614.7000, 1232.3200, 957.2900 > + startingorg, < 0.0000, 125.0000, 0.0000 >, < -2614.7000, 1232.3200, 35.0000 > + startingorg, < 0.0000, 125.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -445.9990, 1265.6400, 937.0000 > + startingorg, < 0.0000, 0.0000, 0.0000 >, < -445.9990, 1265.6400, 291.0991 > + startingorg, < 0.0000, 0.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, false, false )
    MapEditor_CreateZiplineFromUnity( < 2339.4990, 474.2012, 2471.8150 > + startingorg, < 0.0000, -60.0000, 0.0000 >, < 2339.4990, 474.2012, 1827.9680 > + startingorg, < 0.0000, -60.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -2675.2200, -967.9999, 1962.9670 > + startingorg, < 0.0000, -120.0000, 0.0000 >, < -2675.2200, -967.9999, 35.0000 > + startingorg, < 0.0000, -120.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 2390.3590, -793.5291, 2475.8150 > + startingorg, < 0.0000, 120.0000, 0.0000 >, < 2390.3590, -793.5291, 35.0000 > + startingorg, < 0.0000, 120.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < 2064.4000, -359.4041, 2475.8150 > + startingorg, < 0.0000, -25.0000, 0.0000 >, < 2064.4000, -359.4041, 1318.1200 > + startingorg, < 0.0000, -25.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )
    MapEditor_CreateZiplineFromUnity( < -2191.6000, 2063.9000, 1449.9700 > + startingorg, < 0.0000, 150.0000, 0.0000 >, < -2191.6000, 2063.9000, 255.0000 > + startingorg, < 0.0000, 150.0000, 0.0000 >, true, -1, 1, 2, 1, 1, false, true, 50, 25, false, true, false )

    //NonVerticalZipLines 
    MapEditor_CreateZiplineFromUnity( < -2329.4810, -492.8393, 148.0000 > + startingorg, < 0.0000, -180.0000, 0.0000 >, < -2329.4810, -1449.7390, 148.0000 > + startingorg, < 0.0000, -180.0000, 0.0000 >, false, -1, 1, 2, 1, 0.99, false, true, 150, 150, false, false, false )
    MapEditor_CreateZiplineFromUnity( < -1414.5190, -1457.1610, 148.0000 > + startingorg, < 0.0000, 0.0000, 0.0000 >, < -1414.5190, -500.2606, 148.0000 > + startingorg, < 0.0000, 0.0000, 0.0000 >, false, -1, 1, 2, 1, 0.99, false, true, 150, 150, false, false, false )
    MapEditor_CreateZiplineFromUnity( < -937.9990, 886.5997, 148.0000 > + startingorg, < 0.0000, -90.0000, 0.0000 >, < -3.9990, 886.5997, 148.0000 > + startingorg, < 0.0000, -90.0000, 0.0000 >, false, -1, 1, 2, 1, 0.99, false, true, 150, 150, false, false, false )
    MapEditor_CreateZiplineFromUnity( < -1671.0000, -2047.5010, 2199.3910 > + startingorg, < 0.0000, 0.0000, 0.0000 >, < -1670.5000, -2558.7010, 2199.3910 > + startingorg, < 0.0000, 0.0000, 0.0000 >, false, -1, 1, 2, 1, 0.99, false, true, 150, 150, false, false, false )
}

void function Nessy()
{
    PrecacheModel( NESSY_MODEL )
    vector startingorg = MAP_OFFSET

    array < vector > origin = [ < -3008.3000, 2149.9300, 1709.7700 > ]
    array < vector > angles = [ < 0.0000, -114.3300, 0.0000 > ]

    if ( origin.len() != angles.len() ) return

    int numLocation = RandomIntRange( 0, origin.len() )

    CreatePropDynamic( NESSY_MODEL, origin[numLocation] + startingorg, angles[numLocation], 6, 50000 )
}
