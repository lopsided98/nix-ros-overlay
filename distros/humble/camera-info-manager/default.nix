
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, camera-calibration-parsers, rclcpp, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-camera-info-manager";
  version = "3.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/humble/camera_info_manager/3.1.9-1.tar.gz";
    name = "3.1.9-1.tar.gz";
    sha256 = "68387148b569c7ff0ee9ffa381def0c544372bb834cc4867459b8ea8b2d5204e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp camera-calibration-parsers rclcpp rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
