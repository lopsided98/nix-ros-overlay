
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-example-interfaces";
  version = "0.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/jazzy/example_interfaces/0.12.0-3.tar.gz";
    name = "0.12.0-3.tar.gz";
    sha256 = "d33c03d8f05370ac1666124d4c406c5e998cfdc3d7a2491c2f689eaaa118b237";
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
