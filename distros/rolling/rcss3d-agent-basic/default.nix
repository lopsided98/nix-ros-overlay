
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-agent-basic";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/rolling/rcss3d_agent_basic/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "148eb5547d7c49f6a8895d1d5071bc648f13dd55618e9828cbd10429007d2a96";
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
