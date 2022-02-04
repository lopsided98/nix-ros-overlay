
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-rcss3d-agent-msgs";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-sports/rcss3d_agent-release/archive/release/galactic/rcss3d_agent_msgs/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "1524e1d1dda07451f2a9863c6388fb685c40e43848c2de870e34f5185c8dcfb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for communicating with rcss3d_agent'';
    license = with lib.licenses; [ asl20 ];
  };
}
