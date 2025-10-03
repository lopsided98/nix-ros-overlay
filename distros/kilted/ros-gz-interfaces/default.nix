
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros-gz-interfaces";
  version = "2.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/kilted/ros_gz_interfaces/2.1.11-1.tar.gz";
    name = "2.1.11-1.tar.gz";
    sha256 = "1683b71087c0ca61bb9bc96df075808dfa066cc6a8bc887f89ffd31767087f2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rcl-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service data structures for interacting with Gazebo from ROS2.";
    license = with lib.licenses; [ asl20 ];
  };
}
