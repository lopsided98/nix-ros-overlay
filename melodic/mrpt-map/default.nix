
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, nav-msgs, mrpt1, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-map";
  version = "0.1.22";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_map/0.1.22-0.tar.gz;
    sha256 = "9620d164fb59997297313762cb169518e24f22b8be119ce7f7edf07624678832";
  };

  buildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  propagatedBuildInputs = [ nav-msgs mrpt1 mrpt-bridge std-msgs sensor-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    #license = lib.licenses.BSD;
  };
}
