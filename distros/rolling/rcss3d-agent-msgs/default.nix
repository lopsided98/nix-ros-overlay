
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-agent-msgs";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/rolling/rcss3d_agent_msgs/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "28813f69c698a4813ea2e810e2eb2cafefa1a06a171dac6678755bd2e1fa0358";
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
