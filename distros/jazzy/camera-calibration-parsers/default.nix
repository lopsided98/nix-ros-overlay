
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-camera-calibration-parsers";
  version = "5.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/jazzy/camera_calibration_parsers/5.1.4-1.tar.gz";
    name = "5.1.4-1.tar.gz";
    sha256 = "fc0d5e537c22163b76095f4eadc15d9563681a4fa73ff0f19fa70b18b37e0b55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
