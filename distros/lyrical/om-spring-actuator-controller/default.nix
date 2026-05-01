
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, urdf }:
buildRosPackage {
  pname = "ros-lyrical-om-spring-actuator-controller";
  version = "4.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/lyrical/om_spring_actuator_controller/4.1.2-3.tar.gz";
    name = "4.1.2-3.tar.gz";
    sha256 = "e5db9e432fecbb3b1ed43c6285ae12fced527f1e06340285c858ee7c2e0a50c3";
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
