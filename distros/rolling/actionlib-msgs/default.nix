
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-actionlib-msgs";
  version = "5.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/actionlib_msgs/5.2.2-1.tar.gz";
    name = "5.2.2-1.tar.gz";
    sha256 = "f9037b8217aad5bf9815a438e907aeeb13d90c978f88ed8ea354967cfebd4138";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some message definitions used in the implementation of ROS 1 actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
