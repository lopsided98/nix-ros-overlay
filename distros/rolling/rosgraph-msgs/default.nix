
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rosgraph-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/rosgraph_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "de089993440d7d02f8334db2c64373c8ec4688cd39029cd6d69432bb4e734745";
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
