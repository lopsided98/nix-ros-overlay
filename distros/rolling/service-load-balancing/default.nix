
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, example-interfaces, rclcpp, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-service-load-balancing";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/service_load_balancing-release/archive/release/rolling/service_load_balancing/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "73feaf2f1135811f6cce711b8b630ec91542d22351c5addfff12de17bea5db06";
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
