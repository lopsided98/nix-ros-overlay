
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-radar-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-off-highway-radar";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/jazzy/off_highway_radar/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c4373290f636ac45800b543115b75e07d0774f31eeee82f8d826a096744269b6";
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
