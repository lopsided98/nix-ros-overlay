
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, example-interfaces, rclcpp, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-service-load-balancing";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/service_load_balancing-release/archive/release/rolling/service_load_balancing/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "367647d82c2d3f19946e7095d35fef66291eb300c3f8c30c78a1e9fe4b10fe0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest example-interfaces rclcpp std-srvs ];
  propagatedBuildInputs = [ rclcpp rosidl-default-runtime rosidl-typesupport-introspection-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package helps ROS2 services implement load balancing functionality.";
    license = with lib.licenses; [ asl20 ];
  };
}
