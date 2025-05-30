
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, camera-calibration-parsers, rclcpp, rclcpp-lifecycle, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-camera-info-manager";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/kilted/camera_info_manager/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "092e599cf0d521c628b55d5a29c9dc4a6a4045c2c4e71a90c095edf5afa728f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp camera-calibration-parsers rclcpp rclcpp-lifecycle rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
