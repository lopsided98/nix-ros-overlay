
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-composition-interfaces";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/galactic/composition_interfaces/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "06f622936a9621cfc2398c2dcc6c393d460912c1c57302528a9b0aeffe720888";
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
