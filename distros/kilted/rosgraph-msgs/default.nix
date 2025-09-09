
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rosgraph-msgs";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/kilted/rosgraph_msgs/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "1d6101a091d01f4ade6abd442119add669d8344efedcc65ed557d9fd26b41d98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages relating to the ROS Computation Graph.
    These are generally considered to be low-level messages that end users do not interact with.";
    license = with lib.licenses; [ asl20 ];
  };
}
