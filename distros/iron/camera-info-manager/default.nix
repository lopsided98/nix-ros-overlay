
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, camera-calibration-parsers, rclcpp, rclcpp-lifecycle, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-camera-info-manager";
  version = "4.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/iron/camera_info_manager/4.2.3-1.tar.gz";
    name = "4.2.3-1.tar.gz";
    sha256 = "8654605dc1dbbb7df2c5c473f43735c11b0db38a0cac6413a626799139adee14";
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
