
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rosgraph-msgs";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/kilted/rosgraph_msgs/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "12eddf614a9e058396241a41458c29731735c8781de22ce5d118adc7ee49235c";
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
