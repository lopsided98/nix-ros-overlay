
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-pendulum-msgs";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/pendulum_msgs/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "e3d60c0ca93463b6adbb6187ad11c9fea51f6b88a07846a3c73ed2fddbbdc193";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for real-time pendulum control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
