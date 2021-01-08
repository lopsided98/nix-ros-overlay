
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-example-interfaces";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/dashing/example_interfaces/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "8e8677ed6d028dfa1af48a7115ca7064ff01bf760b7e5a5d9b5a2ef5a916e768";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Contains message and service definitions used by the examples.'';
    license = with lib.licenses; [ asl20 ];
  };
}
