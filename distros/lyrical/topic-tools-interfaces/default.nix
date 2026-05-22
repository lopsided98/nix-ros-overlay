
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-topic-tools-interfaces";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/lyrical/topic_tools_interfaces/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "3994332a5d71ca017b87a46543a1b27e08d46a06e52bfe08aabccc4b5abcc36c";
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
