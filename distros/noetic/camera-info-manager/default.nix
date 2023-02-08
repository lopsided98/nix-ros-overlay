
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, gtest, image-transport, roscpp, roslib, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-camera-info-manager";
  version = "1.12.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "image_common-release";
        rev = "release/noetic/camera_info_manager/1.12.0-1";
        sha256 = "sha256-UarjrjPCMzNdKZwY8Uxcnrp53jRf280wWXc/BGUasdk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost camera-calibration-parsers image-transport roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
