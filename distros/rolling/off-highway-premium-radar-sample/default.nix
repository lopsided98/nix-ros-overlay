
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, io-context, off-highway-premium-radar-sample-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-premium-radar-sample";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_premium_radar_sample/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8455fcd1e4e4cb98d18d4551eb9442fe391fb5068e74cd5ca5e84d889c5d5d69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio-cmake-module pcl-conversions ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio diagnostic-updater io-context off-highway-premium-radar-sample-msgs pcl rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake asio-cmake-module ];

  meta = {
    description = "The off_highway_premium_radar_sample package";
    license = with lib.licenses; [ asl20 ];
  };
}
