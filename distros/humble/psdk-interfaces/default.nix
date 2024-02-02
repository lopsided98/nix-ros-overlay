
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-psdk-interfaces";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_interfaces/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "faffdb25758983beb77c0f3cb9e8e7d2ba8c5898903bd903d833e0e3488dff12";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Provides custom message, srv and action types for psdk ros2 wrapper'';
    license = with lib.licenses; [ "MPL" ];
  };
}
