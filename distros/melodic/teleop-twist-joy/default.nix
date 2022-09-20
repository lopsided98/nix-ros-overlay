
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, roscpp, roslaunch, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-teleop-twist-joy";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/ros-teleop/teleop_twist_joy-release/archive/release/melodic/teleop_twist_joy/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "3e9186dd642c84cc2776994b6afa7a97a9a4759d53170c1e1f9fddd9fbc789e4";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch roslint rostest ];
  propagatedBuildInputs = [ geometry-msgs joy roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
