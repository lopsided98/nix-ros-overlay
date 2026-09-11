
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, laser-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sicks300-ros2";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sicks300_ros2-release/archive/release/jazzy/sicks300_ros2/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "c2f0e7ac9248b9f2e14478524b9eb84b9eca56db3b5c324473aa13c198b2b546";
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
