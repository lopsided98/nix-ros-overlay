
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-polaris-can, dbw-polaris-msgs, joy, roscpp, roslaunch, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-polaris-joystick-demo";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/melodic/dbw_polaris_joystick_demo/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "5401b291debe119909d5828faef1a0f413e9884ce0859400aea26166a3a391a3";
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
