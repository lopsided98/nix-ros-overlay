
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-general-purpose-radar-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-general-purpose-radar";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_general_purpose_radar/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "61cebdffa02729fa619b2037af73cb65a97236b22f2dd1a8c0caf85b8381a951";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pcl-conversions ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common pcl-ros ];
  propagatedBuildInputs = [ can-msgs off-highway-can off-highway-general-purpose-radar-msgs pcl rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_general_purpose_radar package";
    license = with lib.licenses; [ asl20 ];
  };
}
