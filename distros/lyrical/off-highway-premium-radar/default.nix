
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, io-context, off-highway-premium-radar-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-off-highway-premium-radar";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/lyrical/off_highway_premium_radar/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "9d8c85f6252774501145caf34a2fd9f0aa75cab6819eb6401893c16d6e44db98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio diagnostic-updater io-context off-highway-premium-radar-msgs rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake asio-cmake-module ];

  meta = {
    description = "The off_highway_premium_radar package";
    license = with lib.licenses; [ asl20 ];
  };
}
