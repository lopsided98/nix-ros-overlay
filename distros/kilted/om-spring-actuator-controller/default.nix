
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, urdf }:
buildRosPackage {
  pname = "ros-kilted-om-spring-actuator-controller";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/om_spring_actuator_controller/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "b815616fc6b93f8fe14bb943d10fdf58c6d28f1afeb42ae91ba8882d3ae07c50";
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
