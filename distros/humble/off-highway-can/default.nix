
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, diagnostic-updater, rclcpp }:
buildRosPackage {
  pname = "ros-humble-off-highway-can";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_can/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "20d663a2c6ac24759350c2bc910595fe71566fae99a20e1cbbf2f1f9cf99922e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs diagnostic-updater rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_can package";
    license = with lib.licenses; [ "Apache-2.0,-MIT" ];
  };
}
