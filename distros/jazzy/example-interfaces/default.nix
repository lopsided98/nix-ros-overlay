
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-example-interfaces";
  version = "0.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/jazzy/example_interfaces/0.12.1-1.tar.gz";
    name = "0.12.1-1.tar.gz";
    sha256 = "2eafd72e89aeffaddf585a3dde1702c9af2e16395105efd5f0355ce1e8c0a40d";
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
