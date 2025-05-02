
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-example-interfaces";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/rolling/example_interfaces/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "167a4af73a8f310c1363e5bda1cbbd70cdea2d0e66ee65319654d448e944477d";
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
