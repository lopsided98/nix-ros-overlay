
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, ps3joy, spacenav-node, wiimote }:
buildRosPackage {
  pname = "ros-noetic-joystick-drivers";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/joystick_drivers/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "0a2a299c997f65767afa8b71b90a0414940c38ee4640f6d93e13d551cf72bd6e";
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
