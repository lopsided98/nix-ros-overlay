
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-uss-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-uss";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_uss/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "14642d0bde9f3d505ea7ea666df3a67829ba2a6c8a2d4fe82704c37a2359a287";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs off-highway-can off-highway-uss-msgs pcl pcl-conversions pcl-ros rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_uss package";
    license = with lib.licenses; [ asl20 ];
  };
}
