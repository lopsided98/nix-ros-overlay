
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, io-context, off-highway-premium-radar-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-premium-radar";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_premium_radar/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4a4bd64172cd1ac67128a0f8334bb7619c75566c70dc6712fac7ac0019a3d20e";
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
