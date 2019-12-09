
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, nav2d-operator, roscpp, nav2d-navigator }:
buildRosPackage {
  pname = "ros-kinetic-nav2d-remote";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_remote/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "cbe3f593863b80821ae7700cd3d457c46a3118f2141b674167e51267b62acdb6";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs nav2d-operator nav2d-navigator roscpp ];
  propagatedBuildInputs = [ sensor-msgs nav2d-navigator roscpp nav2d-operator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used to manually control a robot that uses the operator and
    navigator node from navigation_2d. Currently there is one node to control one
    robot with a joystick and one to control multiple robots in simulation.
    It can send commands directly to the operator or start and stop navigator actions.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
