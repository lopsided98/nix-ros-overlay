
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-costmap-localizer, easynav-costmap-maps-manager, easynav-costmap-planner, easynav-diagnostic-recovery, easynav-navmap-localizer, easynav-navmap-maps-manager, easynav-navmap-planner, easynav-playground-tiago-worlds, easynav-regulated-pp-controller, easynav-system, launch, launch-ros, launch-yaml, navmap-rviz-plugin, rviz2 }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-tiago";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_tiago/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "5b75e1bd04a0d7fa2bfe36f009f898f2ff9ab8f1189286d57019cddee0b84966";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-bonxai-maps-manager easynav-costmap-localizer easynav-costmap-maps-manager easynav-costmap-planner easynav-diagnostic-recovery easynav-navmap-localizer easynav-navmap-maps-manager easynav-navmap-planner easynav-playground-tiago-worlds easynav-regulated-pp-controller easynav-system launch launch-ros launch-yaml navmap-rviz-plugin rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation playground with TIAGo: EasyNav configurations and launchers for the TIAGo simulation (costmap and NavMap + Bonxai).";
    license = with lib.licenses; [ asl20 ];
  };
}
