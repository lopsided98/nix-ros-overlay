
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-kilted-rcss3d-agent-basic";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/kilted/rcss3d_agent_basic/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "092cd8c3ddafe9f4d1c6bc63b66a286f2c5dc4fbbc45db2003c980ee6f88c982";
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
