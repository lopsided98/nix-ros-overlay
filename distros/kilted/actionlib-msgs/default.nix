
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-actionlib-msgs";
  version = "5.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/kilted/actionlib_msgs/5.5.1-1.tar.gz";
    name = "5.5.1-1.tar.gz";
    sha256 = "0b14f1741d96dbabf9eee884cca6a8450632b76e1f62aee89eb915d6b1169487";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some message definitions used in the implementation of ROS 1 actions.";
    license = with lib.licenses; [ asl20 ];
  };
}
