
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-lyrical-rcss3d-agent-basic";
  version = "0.4.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/lyrical/rcss3d_agent_basic/0.4.1-5.tar.gz";
    name = "0.4.1-5.tar.gz";
    sha256 = "5a6448ce62df1a632f48f97f1389f625661b35e620a5051b85eb49028ca7a708";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp-components rcss3d-agent ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic rcss3d agent node that uses rcss3d_agent_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
