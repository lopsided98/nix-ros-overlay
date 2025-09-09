
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-service-load-balancing";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/service_load_balancing-release/archive/release/kilted/service_load_balancing/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "468d12c961b5b18815f982a08a3f60f15605548e3819fb99db0460632d5ef029";
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
