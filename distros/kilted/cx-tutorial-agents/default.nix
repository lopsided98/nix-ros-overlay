
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-bringup }:
buildRosPackage {
  pname = "ros-kilted-cx-tutorial-agents";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_tutorial_agents/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a682b09b40a86b1a9a7a68b2ad6cbab61c90651d94df0dac59e096b2290680c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cx-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Files used in the agent tutorials";
    license = with lib.licenses; [ asl20 ];
  };
}
