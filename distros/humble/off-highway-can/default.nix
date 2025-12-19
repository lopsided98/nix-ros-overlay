
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, diagnostic-updater, rclcpp, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-can";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_can/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "445190e5f280e74e08011de1df71704186c2e6d344e861589e21457c691be83a";
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
