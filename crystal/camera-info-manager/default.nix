
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, camera-calibration-parsers, image-transport, ament-cmake-gtest, sensor-msgs, rclcpp, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-camera-info-manager";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/image_common-release/archive/release/crystal/camera_info_manager/2.0.1-0.tar.gz;
    sha256 = "65a8f9750504734de8a7033629376d64487c7a0467394f8438b92ff98aee89ef";
  };

  buildInputs = [ camera-calibration-parsers image-transport sensor-msgs rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers image-transport sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
