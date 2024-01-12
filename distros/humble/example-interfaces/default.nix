
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-example-interfaces";
  version = "0.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/example_interfaces-release/archive/release/humble/example_interfaces/0.9.3-2.tar.gz";
    name = "0.9.3-2.tar.gz";
    sha256 = "b6cd5cd34b4d2768b2d312a4f66fc442139719ada51e4175336cfef028709e85";
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
