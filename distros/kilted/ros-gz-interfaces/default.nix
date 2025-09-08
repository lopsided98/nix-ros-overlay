
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros-gz-interfaces";
  version = "2.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/kilted/ros_gz_interfaces/2.1.9-1.tar.gz";
    name = "2.1.9-1.tar.gz";
    sha256 = "4eaa191a1a90e022fb6d52740bca0e1d67f00a6322786382dae7aaa063fd6288";
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
