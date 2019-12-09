
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-common, rcl-lifecycle, lifecycle-msgs, ament-cmake-gtest, rosidl-typesupport-cpp, rmw-implementation, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-lifecycle";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_lifecycle/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "9e8f20a28fa9c757bc5d7a1ba64c884d074a1e248283d4fe7654f13cbde63b31";
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
