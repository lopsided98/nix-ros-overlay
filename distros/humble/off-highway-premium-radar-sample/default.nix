
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, diagnostic-updater, io-context, off-highway-premium-radar-sample-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-premium-radar-sample";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_premium_radar_sample/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "ecfe60f97fcf981424597689077dd960617cd8f2bec4663e091f16ae2fa07e40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio diagnostic-updater io-context off-highway-premium-radar-sample-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake asio-cmake-module ];

  meta = {
    description = "The off_highway_premium_radar_sample package";
    license = with lib.licenses; [ asl20 ];
  };
}
