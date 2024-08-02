
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-gz-interfaces";
  version = "0.244.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz_interfaces/0.244.15-1.tar.gz";
    name = "0.244.15-1.tar.gz";
    sha256 = "eef1b2a2bf6dfceb018ccceed81615413249da2c44badb6f6e4a1aa2ade74c16";
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
