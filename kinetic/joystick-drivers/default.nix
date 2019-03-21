
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, spacenav-node, ps3joy, catkin, joy, wiimote }:
buildRosPackage {
  pname = "ros-kinetic-joystick-drivers";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/joystick_drivers/1.12.0-0.tar.gz;
    sha256 = "4cfb6f63439d605f03fc9199200781992a4b9d22e9c6e3a7e44da26119b18c07";
  };

  propagatedBuildInputs = [ wiimote spacenav-node ps3joy joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on packages for interfacing common
    joysticks and human input devices with ROS.'';
    #license = lib.licenses.BSD;
  };
}
