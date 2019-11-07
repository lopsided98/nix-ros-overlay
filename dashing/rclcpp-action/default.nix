
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, ament-lint-common, test-msgs, rcl-action, ament-cmake-gtest, rclcpp, ament-cmake-ros, action-msgs, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-action";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_action/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "320add47877f500a4b2003207703f4e030a9ff43763842c69a004213d3573762";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rosidl-generator-c ament-cmake rclcpp action-msgs rcl-action ];
  checkInputs = [ test-msgs ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-generator-c ament-cmake rclcpp action-msgs rcl-action ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
