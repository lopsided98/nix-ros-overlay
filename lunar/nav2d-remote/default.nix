
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-navigator, nav2d-operator, sensor-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-nav2d-remote";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_remote/0.4.1-0.tar.gz;
    sha256 = "5d2ad4cf794cffd2d9f712bae87a932031cec254850cd1383adebec507c1ebb1";
  };

  buildInputs = [ sensor-msgs nav2d-navigator roscpp nav2d-operator ];
  propagatedBuildInputs = [ sensor-msgs nav2d-navigator roscpp nav2d-operator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used to manually control a robot that uses the operator and
    navigator node from navigation_2d. Currently there is one node to control one
    robot with a joystick and one to control multiple robots in simulation.
    It can send commands directly to the operator or start and stop navigator actions.'';
    #license = lib.licenses.GPLv3;
  };
}
