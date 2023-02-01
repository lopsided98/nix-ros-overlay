
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flir-camera-description, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-noetic-flir-camera-driver";
  version = "0.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "flir_camera_driver-release";
        rev = "release/noetic/flir_camera_driver/0.2.5-1";
        sha256 = "sha256-JxRnIsKLEav39mi/TToTHRmZcuzBq1XqdH0EuxOPW2Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ flir-camera-description spinnaker-camera-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of drivers for Flir cameras based on the Spinnaker SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
