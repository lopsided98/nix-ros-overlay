
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-svh-description, schunk-svh-driver, schunk-svh-msgs }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh";
  version = "0.1.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fzi-forschungszentrum-informatik";
        repo = "schunk_svh_ros_driver-release";
        rev = "release/noetic/schunk_svh/0.1.2-1";
        sha256 = "sha256-vE7M/QBiVMbPyF8B4P0jVnmVOn7JTumZFaFxc52HacU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ schunk-svh-description schunk-svh-driver schunk-svh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 specific packages for the Schunk SVH five finger hand'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
