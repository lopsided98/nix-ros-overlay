
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, backward-ros, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-imu-sensor-broadcaster";
  version = "3.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/imu_sensor_broadcaster/3.19.2-1.tar.gz";
    name = "3.19.2-1.tar.gz";
    sha256 = "e5677b3558fa949e697e45739ed03fbe21068b6fc6f99611beeed5e9265558c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish readings of IMU sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
