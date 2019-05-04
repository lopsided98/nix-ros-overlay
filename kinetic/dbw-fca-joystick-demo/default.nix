
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

  buildInputs = [ std-msgs sensor-msgs roscpp dbw-fca-msgs ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-fca-msgs sensor-msgs joy dbw-fca-can std-msgs roslaunch roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
