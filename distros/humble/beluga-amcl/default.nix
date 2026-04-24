
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, beluga, beluga-ros, bondcpp, message-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-beluga-amcl";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/humble/beluga_amcl/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ecfd25150afec336c5e8da95acc07de00ffbd315410fa03b8cf29a370e423632";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ beluga beluga-ros bondcpp message-filters rclcpp rclcpp-components rclcpp-lifecycle std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An AMCL node implementation for ROS2 using Beluga.";
    license = with lib.licenses; [ asl20 ];
  };
}
