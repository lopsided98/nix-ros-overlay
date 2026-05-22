
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocastlib, ament-cmake, class-loader, glog, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-agnocast-components";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_components/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "f786efa6eba62ccbf6794b7844305b70d3a60969c2d2380a9bc4dff6f182b4bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ agnocast-cie-config-msgs agnocast-cie-thread-configurator agnocastlib class-loader glog rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake tools for registering ROS 2 component nodes with Agnocast executor support.
    Provides agnocast_components_register_node macro similar to rclcpp_components_register_node.";
    license = with lib.licenses; [ asl20 ];
  };
}
