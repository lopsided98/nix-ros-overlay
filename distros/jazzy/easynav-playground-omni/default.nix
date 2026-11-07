
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-costmap-localizer, easynav-costmap-maps-manager, easynav-costmap-planner, easynav-diagnostic-recovery, easynav-playground-omni-worlds, easynav-regulated-pp-controller, easynav-system, launch, launch-ros, launch-yaml, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-omni";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_omni/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "01ff9f481cbbec7fcd2557f082153ae8406cf7c27b50f605b0e5c2e4af828bc7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-costmap-localizer easynav-costmap-maps-manager easynav-costmap-planner easynav-diagnostic-recovery easynav-playground-omni-worlds easynav-regulated-pp-controller easynav-system launch launch-ros launch-yaml rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation playground with omnidirectional robots: EasyNav configurations and launchers for the omnidirectional robots simulation (costmap with RPP).";
    license = with lib.licenses; [ asl20 ];
  };
}
