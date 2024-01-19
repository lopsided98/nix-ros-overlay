
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-topic-tools-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/iron/topic_tools_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "86e44b753d2b8e3cf529d0833cfcc7dc1f108c2dedaa89f11f3b9bb877ace4dc";
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
