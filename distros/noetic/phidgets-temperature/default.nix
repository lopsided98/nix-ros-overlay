
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-temperature";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_temperature/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "edaf8b2a446c14d6c8958bba2d5c3c6e74a299633fd44e99fbd6e379d7522e5a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets Temperature devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
