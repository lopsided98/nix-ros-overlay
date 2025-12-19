
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-uss-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-uss";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_uss/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "aa705a07900eaf042bb043404f8a8936f40b4ec0864caa5f7b524af80001fccd";
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
