
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-costmap-localizer, easynav-costmap-maps-manager, easynav-costmap-planner, easynav-diagnostic-recovery, easynav-playground-omni-worlds, easynav-regulated-pp-controller, easynav-system, launch, launch-ros, launch-yaml, rviz2 }:
buildRosPackage {
  pname = "ros-kilted-easynav-playground-omni";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/kilted/easynav_playground_omni/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "0beb55ebdc7542d921ae4f7bbef8d944693a3b4386b147215c5bccf8a44fdde6";
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
