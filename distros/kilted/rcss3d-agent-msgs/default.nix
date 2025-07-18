
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rcss3d-agent-msgs";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/kilted/rcss3d_agent_msgs/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "bf44ef973e984c12c3ec9d4f22c795ef48fc93de6981ee0924254b6ce3ef9040";
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
