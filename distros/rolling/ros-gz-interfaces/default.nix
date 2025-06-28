
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-interfaces";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_interfaces/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "3a0921345dc18d363363d8649083749747c82b239846811317b5a08207c399d7";
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
