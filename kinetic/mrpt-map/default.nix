
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, mrpt1, std-msgs, mrpt-bridge, tf }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-map";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_map/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "61dc02cca7c06d29d3d445b0dc18456973870bc2845c97b0529eb3099c37c968";
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
