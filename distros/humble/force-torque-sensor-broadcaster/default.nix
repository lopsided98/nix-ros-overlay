
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-force-torque-sensor-broadcaster";
  version = "2.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/force_torque_sensor_broadcaster/2.17.3-1.tar.gz";
    name = "2.17.3-1.tar.gz";
    sha256 = "da1b1b4540655b991f3bd3bfb81f1a0357be808e6d60885feef9ea7ad6eb214c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish state of force-torque sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
