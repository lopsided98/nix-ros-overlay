
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ackermann-nlmpc-msgs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackmerann_nlmpc-release/archive/release/rolling/ackermann_nlmpc_msgs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "23adb09ab6a8e7f44106847e770446f500a6739f2d63bd519200f27630f22138";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message definitions for ackermann_nlmpc";
    license = with lib.licenses; [ gpl3Only ];
  };
}
