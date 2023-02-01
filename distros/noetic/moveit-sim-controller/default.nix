
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, ros-control-boilerplate, roscpp, roslint, rosparam-shortcuts }:
buildRosPackage {
  pname = "ros-noetic-moveit-sim-controller";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PickNikRobotics";
        repo = "moveit_sim_controller-release";
        rev = "release/noetic/moveit_sim_controller/0.3.0-1";
        sha256 = "sha256-sQUHt7VDNG+g8QVKrjRA11/vvomM7IvNCHu3xxUGOuI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning ros-control-boilerplate roscpp rosparam-shortcuts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simulation interface for a hardware interface for ros_control, and loads default joint values from SRDF'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
