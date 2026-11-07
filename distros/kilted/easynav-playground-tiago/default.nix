
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-costmap-localizer, easynav-costmap-maps-manager, easynav-costmap-planner, easynav-diagnostic-recovery, easynav-navmap-localizer, easynav-navmap-maps-manager, easynav-navmap-planner, easynav-playground-tiago-worlds, easynav-regulated-pp-controller, easynav-system, launch, launch-ros, launch-yaml, navmap-rviz-plugin, rviz2 }:
buildRosPackage {
  pname = "ros-kilted-easynav-playground-tiago";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/kilted/easynav_playground_tiago/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "96b390a33ce24cc82cce21ec11eddc1aa594a2a212a5406d4024671bb31d7649";
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
