
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diff-drive-controller, gazebo-plugins, gazebo-ros-control, hector-gazebo-plugins, joint-state-controller, joint-state-publisher, joint-state-publisher-gui, position-controllers, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-mir-description";
  version = "1.1.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uos-gbp";
        repo = "mir_robot-release";
        rev = "release/noetic/mir_description/1.1.7-1";
        sha256 = "sha256-Yc1DzkcskdJruR/1Wn8GuSFWZTQhJHrh+m7g0wH6dnA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ diff-drive-controller gazebo-plugins gazebo-ros-control hector-gazebo-plugins joint-state-controller joint-state-publisher joint-state-publisher-gui position-controllers robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
