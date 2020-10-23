
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, rcl-lifecycle, rclcpp, rmw, rosidl-typesupport-cpp }:
buildRosPackage {
  pname = "ros-foxy-rclcpp-lifecycle";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/foxy/rclcpp_lifecycle/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "f0efa3c23b22b9a9716b3efbb387b38b61bc5593c4210aa7f89248eeb3f6f9fc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclcpp rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
