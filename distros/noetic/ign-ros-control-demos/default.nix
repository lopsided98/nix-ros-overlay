
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, ign-ros-control, joint-state-controller, joint-state-publisher, position-controllers, python3Packages, ros-ign-gazebo, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-noetic-ign-ros-control-demos";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ign_ros_control-release";
        rev = "release/noetic/ign_ros_control_demos/0.0.1-1";
        sha256 = "sha256-27lDC8Xd9aMHtWckQlYwgWYwyyQQ9MBvOo2pnhiBcFQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ effort-controllers ign-ros-control joint-state-controller joint-state-publisher position-controllers ros-ign-gazebo velocity-controllers xacro ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Ignition ros_control package demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
