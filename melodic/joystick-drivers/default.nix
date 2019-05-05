
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, spacenav-node, ps3joy, catkin, joy, wiimote }:
buildRosPackage {
  pname = "ros-melodic-joystick-drivers";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/joystick_drivers/1.12.0-0.tar.gz;
    sha256 = "bfa46ae2ec0edaf6d3bb8d0876da64c78f295047cd7d60a40ace164bdcd6fdeb";
  };

  propagatedBuildInputs = [ wiimote spacenav-node ps3joy joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on packages for interfacing common
    joysticks and human input devices with ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
