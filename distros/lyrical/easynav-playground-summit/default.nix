
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-bonxai-maps-manager, easynav-diagnostic-recovery, easynav-fusion-localizer, easynav-mpc-controller, easynav-mppi-controller, easynav-navmap-localizer, easynav-navmap-maps-manager, easynav-navmap-planner, easynav-playground-summit-worlds, easynav-regulated-pp-controller, easynav-serest-controller, easynav-simple-controller, easynav-system, launch, launch-ros, launch-yaml, navmap-rviz-plugin, rviz2, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-summit";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_summit/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "dad2d4b7784aa08c89f20e33a70924b19a5bf544a5941b2a16560b93d2997568";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-bonxai-maps-manager easynav-diagnostic-recovery easynav-fusion-localizer easynav-mpc-controller easynav-mppi-controller easynav-navmap-localizer easynav-navmap-maps-manager easynav-navmap-planner easynav-playground-summit-worlds easynav-regulated-pp-controller easynav-serest-controller easynav-simple-controller easynav-system launch launch-ros launch-yaml navmap-rviz-plugin rviz2 sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation playground with a Summit XL: EasyNav configurations and launchers for the Summit XL simulation (NavMap and Bonxai with RPP, MPPI and MPC; GPS fusion; warehouse logistics).";
    license = with lib.licenses; [ asl20 ];
  };
}
