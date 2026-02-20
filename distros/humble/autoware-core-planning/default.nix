
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-behavior-velocity-planner, autoware-behavior-velocity-stop-line-module, autoware-cmake, autoware-lint-common, autoware-mission-planner, autoware-motion-velocity-obstacle-stop-module, autoware-motion-velocity-planner, autoware-path-generator, autoware-planning-topic-converter, autoware-velocity-smoother }:
buildRosPackage {
  pname = "ros-humble-autoware-core-planning";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_planning/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "68f6f96db5f2552ffeadc66e15cf4127edd399e753763986e6057a1f1d499360";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner autoware-behavior-velocity-stop-line-module autoware-mission-planner autoware-motion-velocity-obstacle-stop-module autoware-motion-velocity-planner autoware-path-generator autoware-planning-topic-converter autoware-velocity-smoother ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_planning package";
    license = with lib.licenses; [ asl20 ];
  };
}
