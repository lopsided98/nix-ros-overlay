
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-service-load-balancing";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/service_load_balancing-release/archive/release/rolling/service_load_balancing/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "3852892db7f3035ee2a0b849f000f6c24a79203730f7c7cd0a63416d1e187692";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ example-interfaces rclcpp std-srvs ];
  propagatedBuildInputs = [ rclcpp rosidl-default-runtime rosidl-typesupport-introspection-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package helps ROS2 services implement load balancing functionality.";
    license = with lib.licenses; [ asl20 ];
  };
}
