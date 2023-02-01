
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, freenect-camera, freenect-launch }:
buildRosPackage {
  pname = "ros-melodic-freenect-stack";
  version = "0.4.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "freenect_stack-release";
        rev = "release/melodic/freenect_stack/0.4.3-2";
        sha256 = "sha256-Xs5xWfbTUAzTEQRQc/hyBEepV1Pj4Ae8iHX82EG+eFI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ freenect-camera freenect-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
