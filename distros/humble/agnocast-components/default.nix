
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-cie-config-msgs, agnocast-cie-thread-configurator, agnocastlib, ament-cmake, class-loader, glog, launch-testing-ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-agnocast-components";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_components/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "2595df40fd76799a7184a3fb8ae19cb9933d25fcbb723c7f80ede792129c133a";
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
