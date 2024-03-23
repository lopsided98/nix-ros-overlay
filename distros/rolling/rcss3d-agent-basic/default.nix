
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-agent-basic";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_agent-release/archive/release/rolling/rcss3d_agent_basic/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "b06fefb63f61ed7ac9a20faa50212886c8350f9a0a36128b7bac89cae63afe78";
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
