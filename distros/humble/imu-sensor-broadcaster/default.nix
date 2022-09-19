
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-imu-sensor-broadcaster";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/imu_sensor_broadcaster/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "9eabd7543ece8eeb21bc47ac37dbdce2d856446a072035f9cf2739c014b8dc7e";
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
