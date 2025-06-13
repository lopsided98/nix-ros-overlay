
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-gps-sensor-broadcaster";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/gps_sensor_broadcaster/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "ab0321d14efbf2c519ccb946e510db807c136130b4961d4b37f2a6346b43c334";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller to publish readings of GPS sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
