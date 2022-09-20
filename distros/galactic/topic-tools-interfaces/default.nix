
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-topic-tools-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/galactic/topic_tools_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f7e957180a7ade596673a858dfc6a281cc2fe31bed571f9ac9201c96e1c789c1";
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
