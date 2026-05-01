
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-rcss3d-agent-msgs";
  version = "0.4.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/lyrical/rcss3d_agent_msgs/0.4.1-5.tar.gz";
    name = "0.4.1-5.tar.gz";
    sha256 = "d8b48a7c06afdab2ce0610e93c7fe3a4511bb95ae98ba7ca7e0771eb3a928421";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Custom messages for communicating with rcss3d_agent";
    license = with lib.licenses; [ asl20 ];
  };
}
