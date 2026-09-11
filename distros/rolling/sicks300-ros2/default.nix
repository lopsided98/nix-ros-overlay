
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, laser-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-sicks300-ros2";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sicks300_ros2-release/archive/release/rolling/sicks300_ros2/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "b8ebc81f4833e120c8ee68d13064c799f5f0de7100c1c251cd62b613d67f94b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater laser-filters rclcpp rclcpp-components rclcpp-lifecycle rcutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package published a laser scan message out of a Sick S300 laser scanner.";
    license = with lib.licenses; [ asl20 ];
  };
}
