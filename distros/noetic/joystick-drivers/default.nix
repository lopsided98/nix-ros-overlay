
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, ps3joy, spacenav-node, wiimote }:
buildRosPackage {
  pname = "ros-noetic-joystick-drivers";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/joystick_drivers/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "414b483a7a04fc663bc47e08d28449eeb5915d99ea411a744a5adaf620afa834";
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
