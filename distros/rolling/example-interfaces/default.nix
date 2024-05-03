
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-example-interfaces";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/rolling/example_interfaces/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "cf5950e594a63c38836eb3d6d69f4b011ee00b79e225fe38d01c286147674831";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Contains message and service definitions used by the examples.";
    license = with lib.licenses; [ asl20 ];
  };
}
