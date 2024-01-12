
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-mkz-can, dbw-mkz-msgs, joy, roscpp, roslaunch, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-mkz-joystick-demo";
  version = "1.6.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/noetic/dbw_mkz_joystick_demo/1.6.5-1.tar.gz";
    name = "1.6.5-1.tar.gz";
    sha256 = "d69e3bd364248b723e83af93fecfa71645ced16bdad123582175f817d2e58f87";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-mkz-can dbw-mkz-msgs joy roscpp roslaunch sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
