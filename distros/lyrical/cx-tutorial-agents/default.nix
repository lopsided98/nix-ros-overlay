
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-bringup }:
buildRosPackage {
  pname = "ros-lyrical-cx-tutorial-agents";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_tutorial_agents/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "42caf1f3612ad796d457a1ac68e64621aa09befd45849ddd92e41022868adf96";
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
