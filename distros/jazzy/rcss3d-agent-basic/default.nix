
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-jazzy-rcss3d-agent-basic";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/jazzy/rcss3d_agent_basic/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "b43bd52e38c374bae1f3e69614ada36911bf50cd81f369c8d398229f1383b84f";
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
