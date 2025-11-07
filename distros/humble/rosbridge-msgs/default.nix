
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rosbridge-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "db33da97a763a19f99136fb6edadaee70bc0f593f304aa4e4133761c0dcb5729";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface definitions for the rosbridge library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
