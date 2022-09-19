
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-gz-interfaces";
  version = "0.244.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz_interfaces/0.244.6-1.tar.gz";
    name = "0.244.6-1.tar.gz";
    sha256 = "9cee97ff876fd35ebbc512c89fa6d25c1c22d5d8b217e7cfe91be6f525713c43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
