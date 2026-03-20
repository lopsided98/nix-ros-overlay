
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, urdf }:
buildRosPackage {
  pname = "ros-jazzy-om-spring-actuator-controller";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/om_spring_actuator_controller/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "342c93aa02247e39c71773b68be99b305dbc76cb79355dc193bd2555f8a2cb2a";
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
