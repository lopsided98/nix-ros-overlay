
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-example-interfaces";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/rolling/example_interfaces/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "83d902683762cbcbdde4d4581da83690aba56bfe5f4907faf968925faeb06f6a";
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
