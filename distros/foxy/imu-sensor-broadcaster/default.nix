
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-imu-sensor-broadcaster";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/imu_sensor_broadcaster/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "de5ffdaf72aa79b906069892ad4ba6bce748c4c6488a643b7825be0978cbee5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish readings of IMU sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
