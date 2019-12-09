
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, sensor-msgs, can-utils, serial, catkin, roslint, roscpp, puma-motor-msgs, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-puma-motor-driver";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/kinetic/puma_motor_driver/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "75567ed22850d2cb397c2873c85fa10fc30c41e80ef40d7e463005ded8a65968";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs serial roscpp diagnostic-updater puma-motor-msgs ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ joy sensor-msgs can-utils serial roscpp puma-motor-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for Puma single-channel motor control board.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
