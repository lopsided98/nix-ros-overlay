
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, urdf }:
buildRosPackage {
  pname = "ros-lyrical-ffw-spring-actuator-controller";
  version = "1.1.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/lyrical/ffw_spring_actuator_controller/1.1.14-3.tar.gz";
    name = "1.1.14-3.tar.gz";
    sha256 = "cddaa9e3ebef2e565bd259e12754f1b9c0f27affca59bdde155d58d498fd3c3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Spring Actuator Controller ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
