
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav2d-navigator, nav2d-operator, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-remote";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_remote/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "91aa99978a86691724e4b4079baa5825b7f19ec127b1ca8d349af55c22cd64fa";
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
