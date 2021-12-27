Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- carwash
Config.DirtLevel = 0.1 --carwash dirt level

ConsumeablesEat = {
    ["kraker"] = math.random(15, 16),
    ["ekmek"] = math.random(15, 16),
    ["burgers"] = math.random(49, 50),
    ["burgerm"] = math.random(74, 75),
    ["burgerl"] = math.random(99, 100),
    ["burgerxl"] = math.random(99, 100),
    ["friess"] = math.random(49, 50),
    ["friesl"] = math.random(74, 75),
    ["friesxl"] = math.random(99, 100),
    ["hotdogs"] = math.random(49, 50),
    ["hotdogm"] = math.random(74, 75),
    ["hotdogl"] = math.random(99, 100),
    ["hotdogxl"] = math.random(99, 100),
    ["tacos"] = math.random(49, 50),
    ["tacot"] = math.random(74, 75),
    ["tacok"] = math.random(99, 100),
    ["tacoxl"] = math.random(99, 100),
    ["tburgers"] = math.random(74, 75),
    ["tburgerm"] = math.random(99, 100),
    ["tburgerl"] = math.random(99, 100),
    ["tburgerxl"] = math.random(99, 100),
    ["pburger"] = math.random(74, 75),
    ["tavukmenu"] = math.random(99, 100),
    ["etmenu"] = math.random(99, 100),
    ["ahtapotsalata"] = math.random(99, 100),
    ["balikizgara"] = math.random(99, 100),
    ["karidesizgara"] = math.random(99, 100),
    ["mezetabagi"] = math.random(99, 100),
}

ConsumeablesDrink = {
    ["water"] = math.random(15, 16),
    ["portakal_suyu"] = math.random(70, 71),
    ["domates_suyu"] = math.random(70, 71),
    ["turtle_soup"] = math.random(99, 100),
    ["atom"] = math.random(99, 100),
    ["ayran"] = math.random(74, 75),
    ["kola"] = math.random(74, 75),
    ["americano"] = math.random(49, 50),
    ["latte"] = math.random(49, 50),
    ["graphius"] = math.random(99, 100),
    ["macha"] = math.random(99, 100),
}

ConsumeablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}
