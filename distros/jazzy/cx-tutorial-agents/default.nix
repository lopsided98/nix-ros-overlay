
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-bringup }:
buildRosPackage {
  pname = "ros-jazzy-cx-tutorial-agents";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_tutorial_agents/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "485b02d2383348f8ec511428ef5cd6e7fe530fcd2b8a2b5d9fea0f3fe6f823a3";
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
