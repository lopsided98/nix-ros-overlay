
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-actionlib-msgs";
  version = "5.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/jazzy/actionlib_msgs/5.3.5-1.tar.gz";
    name = "5.3.5-1.tar.gz";
    sha256 = "9023963df0f7d5ac4d329af46ef19a4c31c1f0c122ea14ae946593d5af39f497";
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
