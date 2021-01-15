
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, gtest, image-transport, roscpp, roslib, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-camera-info-manager";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/kinetic/camera_info_manager/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "99173c8c962cf3339d30b7453a9e59fed2e36ab0b66de3197ea97d7d553d1646";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
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
