 return {
  -------------------------------------------------------------------
  --- You can copy this file to profile/<custom>.lua file to make modifications
  --- profile/<custom>.lua will not be overwrite on each install/update
  --- this one will be overwritten on each install/update of LotAtc
  -------------------------------------------------------------------


    ----------------------------------------------------------------------
    -- Informations
    ----------------------------------------------------------------------
    -- id of profile (filename)
    -- (default="custom")
    name = "custom",

    -- Short name of profile
    -- (default="Custom")
    short = "Custom",

    -- Name displayed
    -- (default="Custom")
    profile_name = "Custom",

    -- If locked, it cannot be edited with LotAtc Configurator
    -- (default=true)
    locked = true,

    -- Force the display of player's name
    -- (default=true)
    force_player_name = true,

    -- Use callsign instead of group name
    -- (default=0)
    -- Values are:
    --    0: Do not use callsign on group name (activate callsign specific display on clients)
    --    1: Use callsign for all units except humans (disable callsign specific display on clients)
    --    2: Always use callsign for all units including humans (disable callsign specific display on clients)
    use_callsign = 0,



    ----------------------------------------------------------------------
    -- Filters
    ----------------------------------------------------------------------
    -- Relief filter
    -- (default=true)
    relief_filter = true,

    -- Filter low speed airplanes/helicopter
    -- (default=true)
    speed_filter = true,



    ----------------------------------------------------------------------
    -- Radar
    ----------------------------------------------------------------------
    -- Indicate radar coverage simulation to be used
    -- (default="global")
    -- Values are:
    --    "global" : All radars available are used to make a global coverage
    --    "monoradar" : Select radar to use
    modelisation = "global",

    -- Radar modelisation to simulate
    -- (default=1)
    -- Values are:
    --    0: See all, no radar
    --    1: Cylinder model, no altitude management
    --    2: Sphere model, radar are full sphere
    --    3: Conic model, radar are sphere but have some blind cone (cone are defined in DCS)
    radar = 1,

    -- Ground radar modelisation to simulate for units with ground detection capabilities
    -- (default=0)
    -- Values are:
    --    0: Detect all ground units
    --    1: Detect only SAMs units and ships
    --    2: Detect only ships
    --    3: No ground detection
    --    4: Detect only moving ground units + SAMs/ships
    ground_radar = 0,

    -- Use RCS management on radar side
    -- Only USED with radar=3, ignored otherwise
    -- (default=true)
    use_rcs = true,

    -- If true, LotAtc will use the radar scan period, otherwise global value
    -- Only working with monoradar radar modelisation
    -- (default=true)
    use_scan_period = true,



    ----------------------------------------------------------------------
    -- Automation
    ----------------------------------------------------------------------
    -- How LotAtc fills information about friendly unit
    -- Type, classification, capabilities...
    -- Not affecting datalink unit if datalink is used
    -- (default=1)
    -- Values are:
    --    0: For all
    --    1: For only main radars units (AWACS/SAMs/ships..)
    --    2: For only ground radars units (SAMs/ships..)
    --    3: For none
    automatic_info_friend = 1,

    -- How LotAtc fills information about neutrals unit
    -- Type, classification, capabilities...
    -- (default=1)
    -- Values are:
    --    0: For all
    --    1: For only main radars units (AWACS/SAMs/ships..)
    --    2: For only ground radars units (SAMs/ships..)
    --    3: For none
    automatic_info_neutral = 1,

    -- How LotAtc fills information about unit for enemies
    -- Type, classification, capabilities...
    -- (default=1)
    -- Values are:
    --    0: For all
    --    1: For only main radars units (AWACS/SAMs/ships..)
    --    2: For only ground radars units (SAMs/ships..)
    --    3: For none
    automatic_info_eni = 1,



    ----------------------------------------------------------------------
    -- Airport management
    ----------------------------------------------------------------------
    -- Define how airport radar will be modelized with LotAtc
    -- Only airport allowed could act as radar, it is depending of approach_all_airports value above
    -- (default=2)
    -- Values are:
    --    0: Airport will not act as radar
    --    1: Airport radar see all units ( flying and ground units)
    --    2: Airport radar see only aircraft (planes, helicopters) in flight or on ground
    --    3: Airport radar see only FLYING aircrafts or active transponders units (for both AI and human)
    airport_radar_mode = 2,

    -- Allows approaches on airports
    -- (default=1)
    -- Values are:
    --    0: No approach
    --    1: Only coalition airport can have approach
    --    2: All airports can have approach
    approach_all_airports = 1,



    ----------------------------------------------------------------------
    -- Datalink
    ----------------------------------------------------------------------
    -- Use datalink management
    -- (default=true)
    use_datalink = true,

    -- Delay of datalink updates of connected radar in seconds
    -- (default=5)
    datalink_period = 5,

    -- Get all information on unit through datalink
    -- (default=2)
    -- Values are:
    --    0: None, no datalink info management
    --    1: All coalition units
    --    2: Only coalition units with datalink (L16, L4...)
    --    3: Only coalition units with L16 datalink only
    datalink_info_mode = 2,



    ----------------------------------------------------------------------
    -- ESM
    ----------------------------------------------------------------------
    -- Use Electronic Support Measure management
    -- (default=true)
    use_esm = true,

    -- Delay of RWR updates in seconds
    -- (default=20)
    esm_rwr_period = 20,



    ----------------------------------------------------------------------
    -- Advanced
    ----------------------------------------------------------------------
    -- Weapons are visible like any other aircraft (respecting RCS if enabled)
    -- (default=true)
    show_weapons = true,

    -- Show if unit is a human or not
    -- (default=1)
    -- Values are:
    --    0: Show status for all coalitions
    --    1: Only show status for controller's coalition
    --    2: Hide status for all
    show_humans = 1,

    -- Tracking delay, time for the simulation to be able to make a track on a spot radar
    -- Put 0 to disabled the feature and make track instant (as with LotAtc 1.x)
    -- Delay is in seconds
    -- (default=0)
    tracking_delay = 0,

    -- Spot radar and tracking are dissociated, it simulates tracking period
    -- Heading and ground speed are computed
    -- (default=true)
    use_realtracking = true,

    -- If yes, when severals units are near each other, we will only have one track, due to resolution radar
    -- Use false to see everybody in a patrol
    -- (default=true)
    use_range_resolution = true,

    -- Use TAF management (only with M-2000C)
    -- (default=true)
    use_taf = true,

}
