
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-composition-interfaces";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/composition_interfaces/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "52fb1f336f65621b4c5d953fb109cac5ad441c791a94ad7164361c97e4ffdfe5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rcl-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing message and service definitions for managing composable nodes in a container process.'';
    license = with lib.licenses; [ asl20 ];
  };
}
