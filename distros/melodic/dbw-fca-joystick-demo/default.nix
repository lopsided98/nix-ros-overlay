
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-fca-can, dbw-fca-msgs, joy, roscpp, roslaunch, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-joystick-demo";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_joystick_demo/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "accb8db15f7f579109ea55c57ab25d7a61c40f975980397a8fa72d032047ebd4";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-fca-can dbw-fca-msgs joy roscpp roslaunch sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
