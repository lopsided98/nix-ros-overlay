
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake-ros, ament-lint-common, ament-cmake, ament-lint-auto, action-msgs, test-msgs, ament-cmake-gtest, rosidl-generator-c, rclcpp, rcl-action }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-action";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_action/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "a22b2889a613dd67bd9631ff569a2319cb1bf0f3c4fb5ebdc3ccba135ced5149";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rcl-action ament-cmake rosidl-generator-c rclcpp action-msgs ];
  checkInputs = [ test-msgs ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-cpp rcl-action ament-cmake rosidl-generator-c rclcpp action-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
