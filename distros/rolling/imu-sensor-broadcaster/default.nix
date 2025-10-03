
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, backward-ros, controller-interface, controller-manager, eigen, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-imu-sensor-broadcaster";
  version = "5.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/imu_sensor_broadcaster/5.8.0-1.tar.gz";
    name = "5.8.0-1.tar.gz";
    sha256 = "846bb59ab3de368de6bf03a3a4e40b0812c77201a3e18efdb81be79c0f46432c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager hardware-interface-testing ros2-control-test-assets tf2 tf2-geometry-msgs ];
  propagatedBuildInputs = [ backward-ros controller-interface eigen generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller to publish readings of IMU sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
