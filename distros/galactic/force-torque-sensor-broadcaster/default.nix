
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-interface, controller-manager, geometry-msgs, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-galactic-force-torque-sensor-broadcaster";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/force_torque_sensor_broadcaster/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "35777954f04b3a0aa75bea1f3fef7f408870c3abef6db20e69b0f25dbfa014f5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ controller-interface geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish state of force-torque sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
