
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-radar-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-radar";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_radar/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "f9452a4a3b29cc660444945640f2c29686927c6f1fd91261f4f1fc4c46685c8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs off-highway-can off-highway-radar-msgs pcl pcl-conversions pcl-ros rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_radar package";
    license = with lib.licenses; [ asl20 ];
  };
}
