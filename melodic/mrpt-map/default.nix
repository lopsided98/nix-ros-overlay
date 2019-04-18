
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, nav-msgs, mrpt1, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-map";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_map/0.1.24-0.tar.gz;
    sha256 = "0d3b69ed360dd1b9f7be6bc81108e7cb2f16c218d4c445b47af66315c0df6ebc";
  };

  buildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  propagatedBuildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    #license = lib.licenses.BSD;
  };
}
