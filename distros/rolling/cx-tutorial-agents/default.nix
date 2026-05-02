
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-bringup }:
buildRosPackage {
  pname = "ros-rolling-cx-tutorial-agents";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_tutorial_agents/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "89fe2ebc267bed0bae1f0e24fb76bea0c5f794ccd77914828b7d5a52ef0e3bdd";
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
