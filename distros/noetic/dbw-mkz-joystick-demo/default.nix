
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-mkz-can, dbw-mkz-msgs, joy, roscpp, roslaunch, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-mkz-joystick-demo";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/noetic/dbw_mkz_joystick_demo/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "842a370679cdfbed6d8296726e46fbf12a848f58e20d462c79f6771f551d2872";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-mkz-can dbw-mkz-msgs joy roscpp roslaunch sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
