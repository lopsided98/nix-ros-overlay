
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-uss-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-uss";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_uss/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "8de6d0cd2fe6d142e3545d1224bd9ed1f39f73335172837049f729a74dfe316f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pcl-conversions ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common pcl-ros ];
  propagatedBuildInputs = [ can-msgs off-highway-can off-highway-uss-msgs pcl rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_uss package";
    license = with lib.licenses; [ asl20 ];
  };
}
