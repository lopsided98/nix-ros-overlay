
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, off-highway-premium-radar-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-premium-radar";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_premium_radar/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "05ee1b06b7d67e16ce29ac8462709450ff8ababfa4bec6bed7cdcfef579e0f6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio diagnostic-updater off-highway-premium-radar-msgs rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake asio-cmake-module ];

  meta = {
    description = "The off_highway_premium_radar package";
    license = with lib.licenses; [ asl20 ];
  };
}
