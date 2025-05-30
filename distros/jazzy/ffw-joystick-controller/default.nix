
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ffw-joystick-controller";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_joystick_controller/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "951d6e975b8fc4d4f3971996f162182d9286a0a22857595795962ccc8c269c28";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 controller for reading joystick values";
    license = with lib.licenses; [ asl20 ];
  };
}
