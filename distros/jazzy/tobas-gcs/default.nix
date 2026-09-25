
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmw-cyclonedds-cpp, tobas-actuator-test, tobas-control-system, tobas-cyclonedds-config, tobas-flight-log-gui, tobas-gazebo-sim, tobas-parameter-tuning, tobas-property-server, tobas-sensor-calibration, tobas-simulation-gui, tobas-ssh-server, tobas-tile-proxy }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gcs";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gcs/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "03a70b83b43a0a4c7e68ca9fbd002468d3a293995891bf93a98c0d06b9e15410";
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
