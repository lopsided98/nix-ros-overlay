
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-force-torque-sensor-broadcaster";
  version = "5.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/force_torque_sensor_broadcaster/5.2.0-1.tar.gz";
    name = "5.2.0-1.tar.gz";
    sha256 = "efa9f0ee58c24b9515800527b1c00a7c544d0f6828b9235521d008d69cfa6dba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller to publish state of force-torque sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
