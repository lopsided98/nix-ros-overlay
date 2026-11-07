
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, beluga, beluga-ros, bondcpp, message-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, sophus, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-beluga-amcl";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/lyrical/beluga_amcl/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "7619ae7355506dd02729a56286e6f159a7b43790b2b3a87df68d6ef0d07da46c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ beluga beluga-ros bondcpp message-filters rclcpp rclcpp-components rclcpp-lifecycle sophus std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An AMCL node implementation for ROS2 using Beluga.";
    license = with lib.licenses; [ asl20 ];
  };
}
