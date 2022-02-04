
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-galactic-rcss3d-agent-basic";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-sports/rcss3d_agent-release/archive/release/galactic/rcss3d_agent_basic/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "325f1353ff8c2f177dd41111e0c9369a0a06c0f2625eb0d3dc5c395ee832b109";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp-components rcss3d-agent ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic rcss3d agent node that uses rcss3d_agent_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
