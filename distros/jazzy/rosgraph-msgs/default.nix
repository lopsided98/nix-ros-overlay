
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rosgraph-msgs";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/rosgraph_msgs/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "2d96c48ae9a7754b2b7a77d2844f2d25bb47fc512c5da3985a8f96cd2079c939";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages relating to the ROS Computation Graph.
    These are generally considered to be low-level messages that end users do not interact with.";
    license = with lib.licenses; [ asl20 ];
  };
}
