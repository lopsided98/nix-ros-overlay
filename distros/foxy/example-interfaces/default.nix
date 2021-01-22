
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-example-interfaces";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/foxy/example_interfaces/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "cd5d69ea3a7eea5f2ec562a6ab2f15f6d3b58ff0bbbd67a53c06b3058b9b6699";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Contains message and service definitions used by the examples.'';
    license = with lib.licenses; [ asl20 ];
  };
}
