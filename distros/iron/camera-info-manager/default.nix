
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, camera-calibration-parsers, rclcpp, rclcpp-lifecycle, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-camera-info-manager";
  version = "4.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/iron/camera_info_manager/4.2.0-3.tar.gz";
    name = "4.2.0-3.tar.gz";
    sha256 = "a93155ed606b59d0e6372238ee375e6307e9f00cc1d64405a55ed5ed2dcb19ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp camera-calibration-parsers rclcpp rclcpp-lifecycle rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
