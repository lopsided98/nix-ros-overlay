
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslaunch, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kvh";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/kvh_drivers-release/archive/release/kinetic/kvh/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "7fba3bf1d3d4efd86ffb7372d4d52a114ae6f8670129af702d67aa0dc246b547";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A driver for the KVH DSP-3000 single-axis Fiber Optic Gyroscope.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
