
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-actionlib-msgs";
  version = "5.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/actionlib_msgs/5.4.2-1.tar.gz";
    name = "5.4.2-1.tar.gz";
    sha256 = "9bcb116acc12f5864f17616fc2132a9f45c65cfd93c233189f2c1b207f007b94";
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
