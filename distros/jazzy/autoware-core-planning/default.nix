
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-behavior-velocity-planner, autoware-behavior-velocity-stop-line-module, autoware-cmake, autoware-lint-common, autoware-mission-planner, autoware-motion-velocity-obstacle-stop-module, autoware-motion-velocity-planner, autoware-path-generator, autoware-planning-topic-converter, autoware-velocity-smoother }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-planning";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_planning/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "8de6cd8cba9b6fe2fdb7293166e4f4a505c4a2fd18b95fd294173efffcc0254f";
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
