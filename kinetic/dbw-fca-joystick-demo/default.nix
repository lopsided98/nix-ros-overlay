
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, sensor-msgs, joy, catkin, roslib, dbw-fca-can, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca-joystick-demo";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca_joystick_demo/1.0.1-0.tar.gz;
    sha256 = "f1bf1dc0f7f2e1d53f5ae7c16c4dbf46b7422f07ab8b88f831280bb649584617";
  };

  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ roslaunch dbw-fca-msgs dbw-fca-can std-msgs sensor-msgs joy roscpp ];
  nativeBuildInputs = [ catkin dbw-fca-msgs std-msgs sensor-msgs roscpp ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    #license = lib.licenses.BSD;
  };
}
