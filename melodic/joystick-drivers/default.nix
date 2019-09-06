
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, spacenav-node, ps3joy, catkin, joy, wiimote }:
buildRosPackage {
  pname = "ros-melodic-joystick-drivers";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/joystick_drivers/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "40f5d279303bcca1d36d8c540ebb8b57a67269d7bca43fe7db89c400f3edb9b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ wiimote spacenav-node ps3joy joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on packages for interfacing common
    joysticks and human input devices with ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
