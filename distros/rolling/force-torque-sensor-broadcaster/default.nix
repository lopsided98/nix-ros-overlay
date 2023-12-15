
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-force-torque-sensor-broadcaster";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/force_torque_sensor_broadcaster/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "c87926a776c945f702b9012cccd25ce271951b8ba34d386299a8194ab35d4a0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish state of force-torque sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
