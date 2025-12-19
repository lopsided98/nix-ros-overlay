
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, io-context, off-highway-premium-radar-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-premium-radar";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_premium_radar/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "f48c9c1cb2e481927ba4121297df6fa2663afbe050a847025e254bf76bf739b4";
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
