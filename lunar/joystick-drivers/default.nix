
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, spacenav-node, ps3joy, catkin, joy, wiimote }:
buildRosPackage {
  pname = "ros-lunar-joystick-drivers";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/lunar/joystick_drivers/1.12.0-0.tar.gz;
    sha256 = "dba4227294672af7071bbfc283963af91a6961491a3dd2bb25b8dca2053a9e3b";
  };

  propagatedBuildInputs = [ wiimote spacenav-node ps3joy joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on packages for interfacing common
    joysticks and human input devices with ROS.'';
    #license = lib.licenses.BSD;
  };
}
