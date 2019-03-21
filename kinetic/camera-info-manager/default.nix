
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, image-transport, gtest, sensor-msgs, catkin, rostest, roslib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-camera-info-manager";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/kinetic/camera_info_manager/1.11.13-0.tar.gz;
    sha256 = "99173c8c962cf3339d30b7453a9e59fed2e36ab0b66de3197ea97d7d553d1646";
  };

  checkInputs = [ gtest ];
  propagatedBuildInputs = [ roslib boost camera-calibration-parsers image-transport sensor-msgs roscpp ];
  nativeBuildInputs = [ rostest roslib catkin boost camera-calibration-parsers image-transport sensor-msgs roscpp ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    #license = lib.licenses.BSD;
  };
}
