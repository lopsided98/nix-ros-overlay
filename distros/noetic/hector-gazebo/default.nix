
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-plugins, hector-gazebo-thermal-camera, hector-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo";
  version = "0.5.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_gazebo-release";
        rev = "release/noetic/hector_gazebo/0.5.4-1";
        sha256 = "sha256-OdXPnPHs+zVN/Rc/2V7meTUXXJJHR/xkM4UPT9QOShM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-gazebo-plugins hector-gazebo-thermal-camera hector-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo provides packages related to to simulation of robots using gazebo (gazebo plugins, world files etc.)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
