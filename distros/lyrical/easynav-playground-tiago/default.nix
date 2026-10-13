
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-costmap-localizer, easynav-costmap-maps-manager, easynav-costmap-planner, easynav-diagnostic-recovery, easynav-navmap-localizer, easynav-navmap-maps-manager, easynav-navmap-planner, easynav-playground-tiago-worlds, easynav-regulated-pp-controller, easynav-system, launch, launch-ros, launch-yaml, navmap-rviz-plugin, rviz2 }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-tiago";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_tiago/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "1a0024de4682a716a42ee4f05135b3e6d7f1cd81ea38cc2ca0f2d78344df2361";
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
