
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocastlib, ament-cmake, class-loader, glog, launch-testing-ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-components";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_components/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "758259d3ca6962a739fbc5c50e9981cdbe07e735a7b01519b2dd0c0b766a415d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs agnocast-cie-thread-configurator agnocastlib class-loader glog rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake tools for registering ROS 2 component nodes with Agnocast executor support.
    Provides agnocast_components_register_node macro similar to rclcpp_components_register_node.";
    license = with lib.licenses; [ asl20 ];
  };
}
