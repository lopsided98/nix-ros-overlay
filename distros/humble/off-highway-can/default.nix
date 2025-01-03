
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, diagnostic-updater, rclcpp, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-can";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_can/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "200d8df11660d3c2a816481c619ae4eeeffdbefd7d3de2d91e110ccbcf79f3f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs diagnostic-updater rclcpp ros2-socketcan-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_can package";
    license = with lib.licenses; [ "Apache-2.0,-MIT" ];
  };
}
