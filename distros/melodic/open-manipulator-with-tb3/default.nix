
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-with-tb3-description, open-manipulator-with-tb3-tools, open-manipulator-with-tb3-waffle-moveit, open-manipulator-with-tb3-waffle-pi-moveit }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3";
  version = "1.1.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator_with_tb3-release";
        rev = "release/melodic/open_manipulator_with_tb3/1.1.0-2";
        sha256 = "sha256-lIUCyzMv/GhQbgF5HFc2eHWLxbkILAaVksVquqNOfyk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-with-tb3-description open-manipulator-with-tb3-tools open-manipulator-with-tb3-waffle-moveit open-manipulator-with-tb3-waffle-pi-moveit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-enabled OpenManipulator is a full open robot platform consisting of OpenSoftware​, OpenHardware and OpenCR(Embedded board)​.
    The OpenManipulator is allowed users to control it more easily by linking with the MoveIt! package. Moreover it has full hardware compatibility with TurtleBot3​. 
    Even if you do not have a real robot, you can control the robot in the Gazebo simulator​.'';
    license = with lib.licenses; [ asl20 ];
  };
}
