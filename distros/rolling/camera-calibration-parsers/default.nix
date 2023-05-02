
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-camera-calibration-parsers";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_calibration_parsers/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "d2f2945e18fbdbeab774b2fed8e5eb1f0300a9ff6359b9711d841d6c77aad4cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcpputils sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
