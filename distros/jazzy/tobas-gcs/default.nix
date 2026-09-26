
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmw-cyclonedds-cpp, tobas-actuator-test, tobas-control-system, tobas-cyclonedds-config, tobas-flight-log-gui, tobas-gazebo-sim, tobas-parameter-tuning, tobas-property-server, tobas-sensor-calibration, tobas-simulation-gui, tobas-ssh-server, tobas-tile-proxy }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gcs";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gcs/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "474126cb8bfdc7870cade4692191ea51b7bacdfbda3a8bbc203388edd56228fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rmw-cyclonedds-cpp tobas-actuator-test tobas-control-system tobas-cyclonedds-config tobas-flight-log-gui tobas-gazebo-sim tobas-parameter-tuning tobas-property-server tobas-sensor-calibration tobas-simulation-gui tobas-ssh-server tobas-tile-proxy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt ground-control station for managing Tobas projects and flight operations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
