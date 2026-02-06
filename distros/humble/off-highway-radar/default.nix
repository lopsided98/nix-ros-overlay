
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-radar-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-radar";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_radar/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "4a5325e5e9a0556fde4eb97a1f421a0123c2148f650c8d87ef3e58bde96074b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pcl-conversions ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common pcl-ros ];
  propagatedBuildInputs = [ can-msgs off-highway-can off-highway-radar-msgs pcl rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_radar package";
    license = with lib.licenses; [ asl20 ];
  };
}
