
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mimic-joint-controller";
  version = "0.1.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rm-controls";
        repo = "rm_controllers-release";
        rev = "release/noetic/mimic_joint_controller/0.1.7-1";
        sha256 = "sha256-cJxDyk9kabVS2BMPSdY5FJ2EdDVYYL1ASRjncqI8nLE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mimic_joint_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
