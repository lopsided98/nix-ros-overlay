
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-force-torque-sensor-broadcaster";
  version = "2.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/force_torque_sensor_broadcaster/2.37.1-1.tar.gz";
    name = "2.37.1-1.tar.gz";
    sha256 = "f336fe94ea77a0d654d26ff769fd2d61a66fcd48760139b569d8a4e50c1d4ee8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller to publish state of force-torque sensors.";
    license = with lib.licenses; [ asl20 ];
  };
}
