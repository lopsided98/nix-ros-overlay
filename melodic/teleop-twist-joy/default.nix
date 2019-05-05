
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, joy, rostest, roslaunch, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-teleop-twist-joy";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ros-teleop/teleop_twist_joy-release/archive/release/melodic/teleop_twist_joy/0.1.3-0.tar.gz;
    sha256 = "3e9186dd642c84cc2776994b6afa7a97a9a4759d53170c1e1f9fddd9fbc789e4";
  };

  buildInputs = [ roslint sensor-msgs joy rostest roslaunch roscpp geometry-msgs ];
  propagatedBuildInputs = [ roscpp sensor-msgs joy geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic joystick teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
