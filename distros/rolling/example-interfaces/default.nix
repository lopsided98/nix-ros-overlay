
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-example-interfaces";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/rolling/example_interfaces/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "018d1300b41a537bfaf9707ad4da32841c61924c99f28993922ebac1a24c8754";
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
