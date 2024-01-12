
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-iron-rcss3d-agent-basic";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/iron/rcss3d_agent_basic/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "a8ad5f147f94c48d64186954b941f62ee2de074f02ff3fd58c0e8136a8f7ba38";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp-components rcss3d-agent ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic rcss3d agent node that uses rcss3d_agent_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
