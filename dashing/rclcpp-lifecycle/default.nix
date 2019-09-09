
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, rcl-lifecycle, ament-cmake-gtest, rosidl-typesupport-cpp, rmw-implementation, lifecycle-msgs, rclcpp, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-lifecycle";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_lifecycle/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "ed6ac8b6c412b06ddaf57dd0dbe372e593ae474c327e75bc2353c60e196dd8ad";
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
