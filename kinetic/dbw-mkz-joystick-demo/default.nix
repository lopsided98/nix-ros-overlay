
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, sensor-msgs, catkin, joy, roslib, dbw-mkz-can, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-joystick-demo";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_joystick_demo/1.1.1-0.tar.gz;
    sha256 = "42cb642fd9dce08b8679dd54d24d97aa1dfc1786c669870ca6183042a8c3f031";
  };

  buildInputs = [ std-msgs sensor-msgs dbw-mkz-msgs roscpp ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ roslaunch dbw-mkz-msgs dbw-mkz-can std-msgs sensor-msgs joy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    #license = lib.licenses.BSD;
  };
}
