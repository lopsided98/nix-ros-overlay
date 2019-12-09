
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, sensor-msgs, dbw-fca-msgs, std-msgs, catkin, roslib, roscpp, roslaunch, dbw-fca-can }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca-joystick-demo";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca_joystick_demo/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "3a6e6b9c5f9b77c01ae848304e44026c01ed3ea2c66e4c8e525c22a3ef9184e6";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs dbw-fca-msgs roscpp ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ joy sensor-msgs dbw-fca-msgs std-msgs roscpp roslaunch dbw-fca-can ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
