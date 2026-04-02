
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocastlib, ament-cmake, class-loader, glog, launch-testing-ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-components";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_components/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "e468bdfe68e4828734a60677efcf45103f184bb78bc0c07f856291e70d7121df";
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
