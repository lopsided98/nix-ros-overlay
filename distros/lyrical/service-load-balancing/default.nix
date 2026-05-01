
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, example-interfaces, rclcpp, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-service-load-balancing";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/service_load_balancing-release/archive/release/lyrical/service_load_balancing/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "907978a65a9ab96543a8b6c95f9ffc53b8a06448e08b4d802a6b108b7d89e875";
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
