
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, diagnostic-updater, rclcpp, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-lyrical-off-highway-can";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/lyrical/off_highway_can/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "f5f96d9b9f721f99e78351a28f36905808b5c954b4f9117128518d3b1bd261da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs diagnostic-updater rclcpp ros2-socketcan-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_can package";
    license = with lib.licenses; [ asl20 mit ];
  };
}
