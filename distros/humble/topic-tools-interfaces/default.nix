
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-topic-tools-interfaces";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_tools-release/archive/release/humble/topic_tools_interfaces/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "28fbf6b17d7ceda9b3f1f0b62d449c82c63d35a5728be9f69bba3bf6939e4ca6";
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
