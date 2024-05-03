
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-humble-rcss3d-agent-basic";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/humble/rcss3d_agent_basic/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "0dbb523f143c0cf95f54df439e36197f5756faab411ea826d38c682fd5a1ee4c";
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
