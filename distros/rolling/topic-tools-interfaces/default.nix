
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-topic-tools-interfaces";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/rolling/topic_tools_interfaces/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "c18405d7e69e1e8df081606eedbbcbb783426656a449cf33f141286d48dc79ce";
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
