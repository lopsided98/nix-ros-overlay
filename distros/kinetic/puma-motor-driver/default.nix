
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-utils, catkin, diagnostic-updater, joy, puma-motor-msgs, roscpp, roslaunch, roslint, sensor-msgs, serial }:
buildRosPackage {
  pname = "ros-kinetic-puma-motor-driver";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/kinetic/puma_motor_driver/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "75567ed22850d2cb397c2873c85fa10fc30c41e80ef40d7e463005ded8a65968";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ can-utils diagnostic-updater joy puma-motor-msgs roscpp sensor-msgs serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for Puma single-channel motor control board.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
