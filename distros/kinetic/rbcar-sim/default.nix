
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rbcar-control, rbcar-gazebo, rbcar-joystick, rbcar-robot-control, rbcar-sim-bringup }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-sim";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_sim/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "330095f2d2e942918b8763c2c298790e1e90f23fde137d6a4e05f2c43687ddb4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rbcar-control rbcar-gazebo rbcar-joystick rbcar-robot-control rbcar-sim-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_sim package. It contains RBCAR simulation packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
