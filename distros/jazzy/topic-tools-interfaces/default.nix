
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-topic-tools-interfaces";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/jazzy/topic_tools_interfaces/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "c6d7d7e46a7548926c2d925532a2bf7e0648bcb6060ea61903b2201f6989a406";
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
