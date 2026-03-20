
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocastlib, ament-cmake, class-loader, glog, launch-testing-ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-agnocast-components";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_components/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "4d9bd660c95dfb1ee97ef3731ce64e4e42326818be7396912647008ac861ae31";
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
