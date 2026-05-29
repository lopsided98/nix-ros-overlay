
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rosapi-msgs";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/kilted/rosapi_msgs/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "625e2ead423017671940b65707d27bb91028650bd8655cdbb910f9c861b61ba7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface definitions for rosapi package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
