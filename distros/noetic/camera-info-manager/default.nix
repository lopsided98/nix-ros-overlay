
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, gtest, image-transport, roscpp, roslib, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-camera-info-manager";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/noetic/camera_info_manager/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "eb6fbebb3802f05a602af88f612bba442eb59c3a37a39da64cd12397673511b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost camera-calibration-parsers image-transport roscpp roslib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
