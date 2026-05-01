
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-camera-calibration-parsers";
  version = "6.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/lyrical/camera_calibration_parsers/6.4.8-1.tar.gz";
    name = "6.4.8-1.tar.gz";
    sha256 = "97ecb69f1ba8ae351cc277df605a39c2b06d00d97e3ee4ce88125fb5c848c03b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "camera_calibration_parsers contains routines for reading and writing camera calibration parameters.";
    license = with lib.licenses; [ bsd3 ];
  };
}
