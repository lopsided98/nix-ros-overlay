
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-ign-bridge, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-noetic-ros-ign";
  version = "0.111.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_ign-release";
        rev = "release/noetic/ros_ign/0.111.2-1";
        sha256 = "sha256-sv+7/BkrqVVA95p/7uqcLfoGxiT5tE/L/pnfFmAicF4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-ign-bridge ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
