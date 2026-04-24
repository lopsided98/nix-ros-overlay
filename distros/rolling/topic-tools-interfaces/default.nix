
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-topic-tools-interfaces";
  version = "1.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/rolling/topic_tools_interfaces/1.4.4-1.tar.gz";
    name = "1.4.4-1.tar.gz";
    sha256 = "c9953c12e45032a4b4779ec4ae91f58ff0949f9eefa342c4088df3f6ebfcf3a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "topic_tools_interfaces contains messages and services for topic_tools";
    license = with lib.licenses; [ asl20 ];
  };
}
