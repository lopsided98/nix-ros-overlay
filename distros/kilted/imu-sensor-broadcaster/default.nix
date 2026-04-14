
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, eigen, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-imu-sensor-broadcaster";
  version = "5.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/imu_sensor_broadcaster/5.14.0-1.tar.gz";
    name = "5.14.0-1.tar.gz";
    sha256 = "433b5b1fbac0d17fd6cd4b58197af10c7c1a014efde02d588761d92ee3daebac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets tf2 tf2-geometry-msgs ];
  propagatedBuildInputs = [ backward-ros controller-interface eigen generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller to publish readings of IMU sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
