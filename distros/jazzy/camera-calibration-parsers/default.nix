
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-camera-calibration-parsers";
  version = "5.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/jazzy/camera_calibration_parsers/5.1.8-1.tar.gz";
    name = "5.1.8-1.tar.gz";
    sha256 = "a7192b89dbddcb8fba1c30990f7e9cf626de878a47a966ff84627324b85a149e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
