
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-ros-snapd-interfaces";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_snapd_interfaces-release/archive/release/humble/ros_snapd_interfaces/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "81d2064254db7ea4a172839b824b0b682a0b27391f04809fadadadef92db5b59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface definitions for ros2-snapd.";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
