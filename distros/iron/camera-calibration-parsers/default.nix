
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-camera-calibration-parsers";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/iron/camera_calibration_parsers/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "71da8fbec6b1f45f43c560356c1a385b26f7e57eb9cf9f1d4fbe1afe9773e023";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcpputils sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
