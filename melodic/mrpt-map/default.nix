
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, mrpt1, std-msgs, mrpt-bridge, tf }:
buildRosPackage {
  pname = "ros-melodic-mrpt-map";
  version = "0.1.24";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_map/0.1.24-0.tar.gz";
    name = "0.1.24-0.tar.gz";
    sha256 = "0d3b69ed360dd1b9f7be6bc81108e7cb2f16c218d4c445b47af66315c0df6ebc";
  };

  buildType = "catkin";
  buildInputs = [ tf sensor-msgs nav-msgs mrpt1 std-msgs mrpt-bridge roscpp ];
  propagatedBuildInputs = [ tf sensor-msgs nav-msgs mrpt1 std-msgs mrpt-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
