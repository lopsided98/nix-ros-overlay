
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-topic-tools-interfaces";
  version = "1.4.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/lyrical/topic_tools_interfaces/1.4.4-3.tar.gz";
    name = "1.4.4-3.tar.gz";
    sha256 = "25c9a62ba352a958875e03311f561bc4fdb215e948cbde4c82cccec2c6ee139a";
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
