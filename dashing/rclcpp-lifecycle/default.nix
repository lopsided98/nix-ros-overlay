
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, rcl-lifecycle, ament-cmake-gtest, rosidl-typesupport-cpp, rmw-implementation, lifecycle-msgs, rclcpp, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-lifecycle";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_lifecycle/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "42b03181035cd8467f4689b42d4c29e9cb0c077687893d43520eea461aab3e22";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl-lifecycle rosidl-typesupport-cpp rmw-implementation lifecycle-msgs rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rcl-lifecycle rosidl-typesupport-cpp rmw-implementation lifecycle-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a prototype for lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
