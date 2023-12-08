
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-topic-tools-interfaces";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/rolling/topic_tools_interfaces/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "3712ae9a44b6338554d76b3d86522a9d52c0c6aa16be985237bbdca928a1f09f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''topic_tools_interfaces contains messages and services for topic_tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
