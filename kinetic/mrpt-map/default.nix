
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, nav-msgs, mrpt1, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-map";
  version = "0.1.23";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_map/0.1.23-0.tar.gz;
    sha256 = "ef4e33aa1ba62e4257aac890d6bac5dd174481a274949cf475688ca2770085ba";
  };

  buildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  propagatedBuildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    #license = lib.licenses.BSD;
  };
}
