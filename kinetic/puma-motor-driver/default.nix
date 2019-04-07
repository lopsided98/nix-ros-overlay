
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, puma-motor-msgs, roslint, sensor-msgs, joy, serial, catkin, diagnostic-updater, roslaunch, roscpp, can-utils }:
buildRosPackage {
  pname = "ros-kinetic-puma-motor-driver";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/kinetic/puma_motor_driver/0.1.2-0.tar.gz;
    sha256 = "75567ed22850d2cb397c2873c85fa10fc30c41e80ef40d7e463005ded8a65968";
  };

  buildInputs = [ diagnostic-updater puma-motor-msgs sensor-msgs serial roscpp ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ diagnostic-updater roscpp puma-motor-msgs sensor-msgs joy can-utils serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for Puma single-channel motor control board.'';
    #license = lib.licenses.BSD;
  };
}
