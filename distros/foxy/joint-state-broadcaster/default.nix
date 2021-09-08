
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-joint-state-broadcaster";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_state_broadcaster/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "347f3ab84b2a1c86e28a937e7bc19608a843f3a8c978ae7c9fd7477cec6d5842";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock controller-manager rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp-lifecycle rcutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Broadcaster to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
