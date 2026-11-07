
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, laser-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-sicks300-ros2";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sicks300_ros2-release/archive/release/lyrical/sicks300_ros2/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "6cb4be985c129018f19d6e1fde92c9997bee7e24efb1b4e8ac59caab773a05ab";
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
