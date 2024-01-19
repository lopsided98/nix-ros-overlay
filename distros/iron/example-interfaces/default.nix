
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-example-interfaces";
  version = "0.10.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/iron/example_interfaces/0.10.2-4.tar.gz";
    name = "0.10.2-4.tar.gz";
    sha256 = "2487387cdcc8b536154cdbc1668026621f628dfdb3970d3973f5a2c7f840dcc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Contains message and service definitions used by the examples.'';
    license = with lib.licenses; [ asl20 ];
  };
}
