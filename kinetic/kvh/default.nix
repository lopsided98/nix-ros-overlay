
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-kvh";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/kvh_drivers-release/archive/release/kinetic/kvh/1.0.3-0.tar.gz;
    sha256 = "7fba3bf1d3d4efd86ffb7372d4d52a114ae6f8670129af702d67aa0dc246b547";
  };

  buildInputs = [ std-msgs roslaunch roscpp roslint ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A driver for the KVH DSP-3000 single-axis Fiber Optic Gyroscope.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
