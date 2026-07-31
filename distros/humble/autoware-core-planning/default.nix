
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-behavior-velocity-planner, autoware-behavior-velocity-stop-line-module, autoware-cmake, autoware-lint-common, autoware-mission-planner, autoware-motion-velocity-obstacle-stop-module, autoware-motion-velocity-planner, autoware-path-generator, autoware-planning-topic-converter, autoware-velocity-smoother }:
buildRosPackage {
  pname = "ros-humble-autoware-core-planning";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_planning/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "ad50e35f83b44ff6aec776f1d763ef53fe94ad067a9a64abd40d7df9689ad4ab";
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
