
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, ps3joy, spacenav-node, wiimote }:
buildRosPackage {
  pname = "ros-kinetic-joystick-drivers";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/joystick_drivers/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "09efaa5bcd65e0f08b9a37bcffa9b261b8b7bdb43c38501a1fbaea2b75bf7bd0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy ps3joy spacenav-node wiimote ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on packages for interfacing common
    joysticks and human input devices with ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
