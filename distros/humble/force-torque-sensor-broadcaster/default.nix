
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-force-torque-sensor-broadcaster";
  version = "2.53.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/force_torque_sensor_broadcaster/2.53.3-1.tar.gz";
    name = "2.53.3-1.tar.gz";
    sha256 = "26868da2b4e5b291be01638950239e4a70404104c614835f7eb18e7e3723930b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller to publish state of force-torque sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
