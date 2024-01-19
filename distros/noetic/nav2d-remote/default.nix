
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav2d-navigator, nav2d-operator, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav2d-remote";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/noetic/nav2d_remote/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "f3dfb200f139b41661c5c6e21c8a859c444922af46ba38befc9d1f2a298295b1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nav2d-navigator nav2d-operator roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used to manually control a robot that uses the operator and
    navigator node from navigation_2d. Currently there is one node to control one
    robot with a joystick and one to control multiple robots in simulation.
    It can send commands directly to the operator or start and stop navigator actions.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
