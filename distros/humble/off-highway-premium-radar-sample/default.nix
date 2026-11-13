
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, off-highway-premium-radar-sample-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-premium-radar-sample";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_premium_radar_sample/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "ed6cc8c79fd6f08a952cb9771c60173bebccfe26085f81b5d33ec1d6bd50f627";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio-cmake-module pcl-conversions ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio diagnostic-updater off-highway-premium-radar-sample-msgs pcl rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake asio-cmake-module ];

  meta = {
    description = "The off_highway_premium_radar_sample package";
    license = with lib.licenses; [ asl20 ];
  };
}
