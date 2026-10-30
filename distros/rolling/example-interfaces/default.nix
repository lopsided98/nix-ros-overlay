
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-example-interfaces";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/rolling/example_interfaces/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "574bcea8ea646a0cbcb431a65b46af1d6b6671a2f825d3b0fe5eb9d7591aad68";
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
