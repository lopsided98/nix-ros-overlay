
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, roscpp, roslaunch, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teleop-twist-joy";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/ros-teleop/teleop_twist_joy-release/archive/release/kinetic/teleop_twist_joy/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "d18f5be0d75d09fc28c68dff4890f304df9a60b70b29915d37d96d8a7c622749";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint rostest ];
  propagatedBuildInputs = [ geometry-msgs joy roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
