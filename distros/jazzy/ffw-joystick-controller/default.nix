
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ffw-joystick-controller";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_joystick_controller/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "02e265cc833307b1092020f6c7d024a6f640bdb0b83fb92ac07b9f7b995266c4";
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
