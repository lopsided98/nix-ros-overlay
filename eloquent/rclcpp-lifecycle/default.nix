
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-common, rcl-lifecycle, lifecycle-msgs, ament-cmake-gtest, rosidl-typesupport-cpp, rmw-implementation, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-lifecycle";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_lifecycle/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "aa2c7e58e2d6ff0a28bc1e00d1c6ac8f89a6e08f6a648e2cf76105002f4b469f";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl-lifecycle rosidl-typesupport-cpp rmw-implementation rclcpp lifecycle-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rcl-lifecycle rosidl-typesupport-cpp rmw-implementation rclcpp lifecycle-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
