
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-agent-msgs";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/rolling/rcss3d_agent_msgs/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "c73f84e5f5b12d9e49e13030f8a80f0cc7f8813bf0eaab5808a5192658657db6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for communicating with rcss3d_agent'';
    license = with lib.licenses; [ asl20 ];
  };
}
