
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-example-interfaces";
  version = "0.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/lyrical/example_interfaces/0.14.1-3.tar.gz";
    name = "0.14.1-3.tar.gz";
    sha256 = "9ea90c38057bd2f8c8cc5d8c302cf7d3f872a6324229e6a1a884360b7fb7e870";
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
