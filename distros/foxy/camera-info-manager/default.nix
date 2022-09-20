
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, camera-calibration-parsers, rclcpp, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-camera-info-manager";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/foxy/camera_info_manager/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "f6ece97f5bf6e68f691cab308da708e380c8852dd452cdb5ce2fd2a22738567b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp camera-calibration-parsers rclcpp rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
