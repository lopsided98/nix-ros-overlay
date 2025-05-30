
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, backward-ros, control-msgs, control-toolbox, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, rsl, tl-expected, urdf }:
buildRosPackage {
  pname = "ros-kilted-om-spring-actuator-controller";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/om_spring_actuator_controller/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "58be26ff13bf9ee87fea6fd9e44a43342c0ebfe54d2ff8cfb3cde80f9797a600";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools rsl tl-expected urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Spring Actuator Controller ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
