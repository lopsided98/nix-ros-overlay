
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ffw-joystick-controller";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_joystick_controller/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "fd569d39f2ee54f6ceaf44be1df61b3c6d02551f831b9e20bb1a5176fcab8b9e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 controller for reading joystick values";
    license = with lib.licenses; [ asl20 ];
  };
}
