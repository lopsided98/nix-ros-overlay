
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control, gazebo-ros-pkgs, joint-state-controller, joint-trajectory-controller }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-gazebo";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_gazebo/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "5e37ed32e22937fe31bff29c788762408e791933897dc8e9c94ab353645ecccb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros-control gazebo-ros-pkgs joint-state-controller joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot gazebo package includes a launch file for simulating DENSO robot.'';
    license = with lib.licenses; [ mit ];
  };
}
