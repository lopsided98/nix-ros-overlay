
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, image-transport, gtest, sensor-msgs, catkin, rostest, roslib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-camera-info-manager";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/melodic/camera_info_manager/1.11.13-0.tar.gz;
    sha256 = "c24f43db36b8922346fb722119850fdd6a0fafe87fa38521edba5c8c6ed4e98d";
  };

  buildInputs = [ boost camera-calibration-parsers image-transport sensor-msgs rostest roslib roscpp ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost camera-calibration-parsers image-transport sensor-msgs roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
