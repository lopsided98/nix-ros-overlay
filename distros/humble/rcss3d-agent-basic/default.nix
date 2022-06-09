
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-humble-rcss3d-agent-basic";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/humble/rcss3d_agent_basic/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "2d65714464a0ac3bdc1088f415e7a463bfcc7d687c54464a63f64e61aea6bf2e";
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
