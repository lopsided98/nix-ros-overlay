
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, easynav-costmap-localizer, easynav-costmap-maps-manager, easynav-costmap-planner, easynav-diagnostic-recovery, easynav-interfaces, easynav-mhamcl-localizer, easynav-mpc-controller, easynav-mppi-controller, easynav-playground-kobuki-worlds, easynav-regulated-pp-controller, easynav-routes-maps-manager, easynav-serest-controller, easynav-simple-controller, easynav-simple-localizer, easynav-simple-maps-manager, easynav-simple-planner, easynav-simple-recovery, easynav-system, launch, launch-ros, launch-yaml, python3Packages, ros2topic, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-kobuki";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_kobuki/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "ab3835e5c09fa24847e9964520e77daa34fac5d43ce95371318b099bab8e967d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python easynav-costmap-localizer easynav-costmap-maps-manager easynav-costmap-planner easynav-diagnostic-recovery easynav-interfaces easynav-mhamcl-localizer easynav-mpc-controller easynav-mppi-controller easynav-playground-kobuki-worlds easynav-regulated-pp-controller easynav-routes-maps-manager easynav-serest-controller easynav-simple-controller easynav-simple-localizer easynav-simple-maps-manager easynav-simple-planner easynav-simple-recovery easynav-system launch launch-ros launch-yaml python3Packages.pyyaml ros2topic rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation playground with a Kobuki: EasyNav configurations and launchers for the Kobuki simulation (costmap with RPP, MPPI, MPC, SeReST, MH-AMCL, routes and safety mode; Simple; mapping; multirobot).";
    license = with lib.licenses; [ asl20 ];
  };
}
