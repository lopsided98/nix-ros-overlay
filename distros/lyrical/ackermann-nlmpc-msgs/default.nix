
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ackermann-nlmpc-msgs";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackmerann_nlmpc-release/archive/release/lyrical/ackermann_nlmpc_msgs/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "a232ca5cccc8a7db4fb488f0efdf68ecb2ef253a31a3ff27a5f5188615f41f0b";
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
