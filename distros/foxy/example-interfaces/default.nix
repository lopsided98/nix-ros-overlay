
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-example-interfaces";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/foxy/example_interfaces/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "74a5cd21a531a90d5117d482943d18ad44f0b5b3679ec28a3331f32f660aa77d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Contains message and service definitions used by the examples.'';
    license = with lib.licenses; [ asl20 ];
  };
}
