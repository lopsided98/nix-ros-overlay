
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, sensor-msgs, joy, catkin, roslib, dbw-fca-can, std-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-joystick-demo";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_joystick_demo/1.0.1-0.tar.gz;
    sha256 = "7e0a5b980a8b2ec5a014e3acc25ed73986f5d141d87bf1483f73ce8944fe6b89";
  };

  buildInputs = [ std-msgs sensor-msgs roscpp dbw-fca-msgs ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ roslaunch dbw-fca-msgs dbw-fca-can std-msgs sensor-msgs joy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    #license = lib.licenses.BSD;
  };
}
