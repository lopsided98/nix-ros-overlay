
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, beluga, beluga-ros, bondcpp, message-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-beluga-amcl";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/jazzy/beluga_amcl/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "b9e99546bfcacabe7af49d37fbcb4bbd7b3ba992e49f92f6e72c5ea6393708e7";
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
