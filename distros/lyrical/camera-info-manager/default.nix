
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, camera-calibration-parsers, rclcpp, rclcpp-lifecycle, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-camera-info-manager";
  version = "6.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/lyrical/camera_info_manager/6.4.9-1.tar.gz";
    name = "6.4.9-1.tar.gz";
    sha256 = "a34664d4e31cb62ebbeec37692e5dff486b41cf12fe51fdc61d088053d1cfb7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp camera-calibration-parsers rclcpp rclcpp-lifecycle rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "This package provides a C++ interface for camera calibration
     information.  It provides CameraInfo, and handles SetCameraInfo
     service requests, saving and restoring the camera calibration
     data.";
    license = with lib.licenses; [ bsd3 ];
  };
}
