
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, image-transport, gtest, sensor-msgs, catkin, rostest, roslib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-camera-info-manager";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/lunar/camera_info_manager/1.11.13-0.tar.gz;
    sha256 = "76bea33eed563058d9e9d3aecdfdcc472a0600fa1ad0c3a4b4b8d3d5eb9a39fa";
  };

  buildInputs = [ rostest roslib boost camera-calibration-parsers image-transport sensor-msgs roscpp ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ roslib boost camera-calibration-parsers image-transport sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    #license = lib.licenses.BSD;
  };
}
