
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-polaris-can, dbw-polaris-msgs, joy, roscpp, roslaunch, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-joystick-demo";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_joystick_demo/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "8c9ea3b4d2a371df6ccacf4429555869b02d014e88f85f60fc5ff2dff255ca8d";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-polaris-can dbw-polaris-msgs joy roscpp roslaunch sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
