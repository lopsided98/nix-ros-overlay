
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-actionlib-msgs";
  version = "4.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/actionlib_msgs/4.9.1-1.tar.gz";
    name = "4.9.1-1.tar.gz";
    sha256 = "b5a3d64edbf1c112f28869c73054ad58c7aa2e0bc25a5d45489ed379a6007ac7";
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
