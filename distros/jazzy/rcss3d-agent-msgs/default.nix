
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rcss3d-agent-msgs";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/jazzy/rcss3d_agent_msgs/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "31f09fa413e5158f5ed0e3fcbcf6fcd6d34926a510d1f5cc9f808ae8e915cee0";
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
