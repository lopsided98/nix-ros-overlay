
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-ros-snapd-interfaces";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_snapd_interfaces-release/archive/release/lyrical/ros_snapd_interfaces/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "94c2e829747fde6b9fdec4b420daf5ec46b87cef05e87d45387d9cb6a44f0332";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface definitions for ros2-snapd.";
    license = with lib.licenses; [ gpl3 ];
  };
}
