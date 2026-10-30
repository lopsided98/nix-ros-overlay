
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-costmap-localizer, easynav-costmap-maps-manager, easynav-costmap-planner, easynav-diagnostic-recovery, easynav-navmap-localizer, easynav-navmap-maps-manager, easynav-navmap-planner, easynav-playground-tiago-worlds, easynav-regulated-pp-controller, easynav-system, launch, launch-ros, launch-yaml, navmap-rviz-plugin, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-tiago";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_tiago/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "c82079ec99c0a3bd85585b440b63877905ba6938a903d4524e67296d78cac2d5";
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
