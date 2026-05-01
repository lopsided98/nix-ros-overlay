
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, io-context, off-highway-premium-radar-sample-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-off-highway-premium-radar-sample";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/lyrical/off_highway_premium_radar_sample/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "0343fa060e76d6ca1300879771423ad4994390b7c2b4c50bce65e2d811979213";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio-cmake-module pcl-conversions ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio diagnostic-updater io-context off-highway-premium-radar-sample-msgs pcl rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake asio-cmake-module ];

  meta = {
    description = "The off_highway_premium_radar_sample package";
    license = with lib.licenses; [ asl20 ];
  };
}
