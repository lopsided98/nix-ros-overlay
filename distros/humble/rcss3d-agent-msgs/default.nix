
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rcss3d-agent-msgs";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/humble/rcss3d_agent_msgs/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "da718a24f9f8e984c92ce735b8f46f35646a3fe82c13fe1dd582c47d32f351b7";
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
