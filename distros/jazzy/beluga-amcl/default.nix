
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, beluga, beluga-ros, bondcpp, message-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-beluga-amcl";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/jazzy/beluga_amcl/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "979769fb839d521ad614bb7803fb9496c22a9cdd8e5227ad1a9431708fe87ebb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ beluga beluga-ros bondcpp message-filters rclcpp rclcpp-components rclcpp-lifecycle std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An AMCL node implementation for ROS2 using Beluga.";
    license = with lib.licenses; [ asl20 ];
  };
}
