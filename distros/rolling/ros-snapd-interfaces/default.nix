
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-ros-snapd-interfaces";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_snapd_interfaces-release/archive/release/rolling/ros_snapd_interfaces/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "ee0128e156615d6b4fb9bde49874ee6d81d079f3b3f06fa92899296bc59f2c2d";
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
