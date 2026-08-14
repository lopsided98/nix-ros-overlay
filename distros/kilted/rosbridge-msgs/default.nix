
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rosbridge-msgs";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/kilted/rosbridge_msgs/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "ff85593cf4b720541a9f71e8f82eadc572abaa28a0aa3ff3a40f6f96f156aa43";
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
